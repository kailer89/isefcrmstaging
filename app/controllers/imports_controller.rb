class ImportsController < ApplicationController
  before_filter :authenticate_user!
  
  require 'csv' 
  require 'iconv'

  def getEmtpyForNik(val)

    if val !=nil and not val.nil?

      return val.rstrip
    else 
      return val
    end

  end

  def uploadcsv
    @import = Import.find(params[:id])
        all_ok = true
        @errores= []
        @errordetails=[]
        @objecto = nil
        @theobject = nil
        begin
        csv_text = File.read("public/" + @import.filename_url.to_s)
        utf8_string = Iconv.iconv('utf-8', 'iso8859-1', csv_text).first
        csv = CSV.parse(utf8_string, :headers => true) 
        csv.each do |row| 
          begin
            logger.debug "INFO************************************************"
            logger.debug row
            logger.debug "INFO************************************************"
            row = row.to_hash.with_indifferent_access 
            prospecto=row
            direccion= row.to_hash 


            #*Nombre(s):

            if prospecto["nombre"]!=nil and prospecto["nombre"].upcase == "*NOMBRE(S):"
              next
            end

            if prospecto["nombre"]!=nil and prospecto["nombre"].upcase =="AL MOMENTO DE GUARDAR"
              next
            end

            #remove extra fields
            if prospecto["nombre"]!=nil and prospecto["nombre"].upcase.match(/^NOMBRE/)
              
            elsif prospecto["sexo"] != nil

              if getEmtpyForNik(prospecto["sexo"]).upcase == "MASCULINO"
                  prospecto["sexo"] = true
              else
                  prospecto["sexo"] = false
              end

              prospecto.delete("calle")
              prospecto.delete("no_exterior")
              prospecto.delete("no_interior")
              prospecto.delete("codigo_postal")
              prospecto.delete("colonia")
              prospecto.delete("delegacion_municipio")
              prospecto.delete("medio_de_contacto")
              prospecto.delete("nacionalidad")
              prospecto.delete("programa")
              prospecto.delete("nivel")
              prospecto.delete("estado")
              prospecto.delete("pais")
              prospecto.delete("commentarios")
              prospecto.delete("ultimo_grado_de_estudio")
              prospecto.delete("ultimo_grado_de_estudios")
              prospecto.delete("preparatoria_o_universidad_de_origen")
              prospecto.delete("municipio_de_la_preparatoria_o_universidad_de_origen")
              prospecto.delete("ano_de_graduacion")
              prospecto.delete("turno")
              prospecto.delete("modalidad")
              prospecto.delete("periodo_para_ingresar")
              prospecto.delete("interes_academico_1")
              prospecto.delete("interes_academico_2")
              prospecto.delete("interes_academico_3")
              prospecto.delete("descuento_en_la_inscripcion")
              prospecto.delete("porcentaje")
              prospecto.delete("fecha_de_caducidad")
              prospecto.delete("otro_cual")
              prospecto.delete("status_de_interes_de_prospecto_validado")
              prospecto.delete("subsede")
              prospecto["email"] = prospecto["email"].gsub(" ","") if prospecto["email"] != nil


                  if prospecto["email"] == nil
                    prospecto["email"] = 'vacio@vacio.com'
                  end

                  if %w(telefono_particular telefono_movil otro_telefono).all?{|attr| prospecto[attr].blank?}
                    if  prospecto["telefono_particular"].blank?
                      prospecto["telefono_particular"] = 0
                    end
                    if  prospecto["telefono_movil"].blank?
                      prospecto["telefono_movil"] = 0
                    end
                    if  prospecto["otro_telefono"].blank?
                      prospecto["otro_telefono"] = 0
                    end
                  end
              @objecto = eval(@import.module.singularize.camelize).create!(prospecto.to_hash.symbolize_keys)

              logger.debug "1#######################################################################"
                if(@import.module.singularize.camelize=="Prospecto")
                  @objecto.importado_revisado=true
                  @objecto.issolicitante=false
                  @objecto.archivado =false
                  @objecto.created_by = current_user.id
                  @objecto.user_id =current_user.id
                  @objecto.sede_id =current_user.sede_id

                  @objecto.accion_estrategicas.build

                  if direccion["nacionalidad"] != nil
                      @nacionalidad = Nacionalidad.where(:nacionalidad=>getEmtpyForNik(direccion["nacionalidad"]),:pais=>getEmtpyForNik(direccion["pais"])).first
                      if @nacionalidad == nil
                        @nacionalidad = Nacionalidad.create(:nacionalidad=>getEmtpyForNik(direccion["nacionalidad"]),:pais=>getEmtpyForNik(direccion["pais"]))
                        @nacionalidad.save
                      end
                      logger.debug "==========================="
                      logger.debug @nacionalidad.inspect
                      logger.debug "==========================="
                      @objecto.nacionalidad_id = @nacionalidad.id
                  end
                  
                  if  direccion["programa"] != nil
                      @programa = Programa.find_or_create_by_programa_and_nivel(getEmtpyForNik(direccion["programa"]),getEmtpyForNik(direccion["nivel"]))
                      if direccion["nivel"] != nil
                        @programa.nivel = getEmtpyForNik(direccion["nivel"])
                        @programa.save
                      else
                        @programa.nivel = "Sin Nivel"
                        @programa.save                        
                      end
                      @objecto.programa_id = @programa.id
                  end


                  #direccions
                  @objecto.direccions.build
                  @objecto.direccions.first.calle=direccion["calle"]
                  @objecto.direccions.first.no_exterior=direccion["no_exterior"]
                  @objecto.direccions.first.no_interior=direccion["no_interior"]
                  @objecto.direccions.first.codigo_postal=direccion["codigo_postal"]
                  @objecto.direccions.first.colonia=direccion["colonia"]
                  @objecto.direccions.first.delegacion_municipio=direccion["delegacion_municipio"]
                  @objecto.direccions.first.estado=direccion["estado"]
                  @objecto.direccions.first.pais=direccion["pais"]
                  #interes basicos
                  @objecto.interes_basicos.build
                  @objecto.interes_basicos.first.comentarios = direccion["commentarios"]
                  if direccion["nivel"] != nil
                      @nivel = Nivel.find_or_create_by_valor(getEmtpyForNik(direccion["nivel"]))
                       @objecto.interes_basicos.first.nivel_id = @nivel.id

                  end       



                  @sub_sede = Subsede.where(:sede_id=>current_user.sede_id)
                  #checking for subsede
                  if direccion["subsede"]!=nil

                    logger.debug "a************************************************"
                    logger.debug "a************************************************"
                    logger.debug "a************************************************"
                      subs = @sub_sede.where("nombre like '%" + getEmtpyForNik(direccion["subsede"]) + "%'")


                    logger.debug "b************************************************"
                    logger.debug "b************************************************"
                    logger.debug "b************************************************"
                      if subs !=nil and subs.first !=nil
                        logger.debug "c************************************************"
                    logger.debug "c************************************************"
                    logger.debug "c************************************************"
                          @objecto.interes_basicos.first.sede_id = subs.first.sede_id
                          @objecto.interes_basicos.first.subsede_id = subs.first.id
                              
                      else
                          logger.debug "d************************************************"
                    logger.debug "d************************************************"
                    logger.debug "d************************************************"
                          @objecto.interes_basicos.first.sede_id = current_user.sede_id
                          @objecto.interes_basicos.first.subsede_id = current_user.sede_id
                            
                      end
                  else
                        logger.debug "e************************************************"
                    logger.debug current_user.sede_id
                    logger.debug "e************************************************"
                     @objecto.interes_basicos.first.sede_id = current_user.sede_id
                      @objecto.interes_basicos.first.subsede_id =current_user.sede_id
                  end

                 logger.debug "asd************************************************"
                  logger.debug "asd************************************************"
                  logger.debug "asd************************************************"
                  logger.debug "asd************************************************"
                  logger.debug "asd************************************************"
                  logger.debug "asd************************************************"
                  logger.debug "asd************************************************"
                  logger.debug "asd************************************************"
                  logger.debug "asd************************************************"
                  logger.debug "asd************************************************"

                  #@objecto.interes_basicos.first.sede_id = current_user.sede_id
                  

                  if direccion["ultimo_grado_de_estudio"] != nil
                      @ultimo_grado_de_estudio = UltimoGradoDeEstudio.find_or_create_by_grado_de_estudio(getEmtpyForNik(direccion["ultimo_grado_de_estudio"]))
                       @objecto.interes_basicos.first.ultimo_grado_de_estudio_id = @ultimo_grado_de_estudio.id
                  end
                  
                  if direccion["preparatoria_o_universidad_de_origen"] != nil or direccion["preparatoria_o_universidad_de_origen"] != nil
                      @preparatoria_o_universidad_de_origen = PreparatoriaOUniversidadDeOrigen.find_or_create_by_valor(getEmtpyForNik(direccion["preparatoria_o_universidad_de_origen"]))
                      @objecto.interes_basicos.first.preparatoria_o_universidad_de_origen_id = @preparatoria_o_universidad_de_origen.id
                  end
                
                  if direccion["municipio_de_la_preparatoria_o_universidad_de_origen"] != nil
                      @municipio_de_la_preparatoria_o_universidad_de_origen = MunicipioDeLaPreparatoriaOUniversidadDeOrigen.find_or_create_by_valor(getEmtpyForNik(direccion["municipio_de_la_preparatoria_o_universidad_de_origen"]))
                      @objecto.interes_basicos.first.municipio_de_la_preparatoria_o_universidad_de_origen_id = @municipio_de_la_preparatoria_o_universidad_de_origen.id
                  end
                  @objecto.interes_basicos.first.ano_de_graduacion=direccion["ano_de_graduacion"]

     
                  if direccion["turno"] != nil
                      @turno = Turno.find_or_create_by_valor(getEmtpyForNik(direccion["turno"]))
                      @objecto.interes_basicos.first.turno_id = @turno.id
                  end
                  if direccion["modalidad"] != nil
                      @modalidad = Modalidad.find_or_create_by_valor(getEmtpyForNik(direccion["modalidad"]))
                      @objecto.interes_basicos.first.modalidad_id = @modalidad.id
                  end              
                  if direccion["periodo_para_ingresar"] != nil
                      @periodo_para_ingresar = PeriodoParaIngresar.find_or_create_by_valor(getEmtpyForNik(direccion["periodo_para_ingresar"]))
                      @objecto.interes_basicos.first.periodo_para_ingresar_id = @periodo_para_ingresar.id
                  end              
                  logger.debug "2#######################################################################"
                  #medio de contactos
                  @objecto.medio_de_contactos.build
                  @objecto.medio_de_contactos.first.otro_texto = direccion["medio_de_contacto"]
                  #interes academicos
                  @objecto.interes_academicos.build
                  @objecto.interes_academicos.first.opcion_1 = direccion["interes_academico_1"]
                  @objecto.interes_academicos.first.opcion_2 = direccion["interes_academico_2"]
                  @objecto.interes_academicos.first.opcion_3 = direccion["interes_academico_3"]

                  #plan de descuentos
                  @objecto.plan_de_descuentos.build    
                  @objecto.plan_de_descuentos.first.descuento_en_la_inscripcion = direccion["descuento_en_la_inscripcion"]              
                  @objecto.plan_de_descuentos.first.porcentaje = direccion["porcentaje"]
                  @objecto.plan_de_descuentos.first.fecha_de_caducidad = direccion["fecha_de_caducidad"]
                  @objecto.plan_de_descuentos.first.otro_cual = direccion["otro_cual"]
                  @theobject = @objecto
                  if @objecto.save!( :validate => false )
                    all_ok = true
                    historial = History.new
                    historial.model_name = "prospectos"
                    historial.model_id = @objecto.id
                    historial.user_id = current_user.id
                    historial.role = current_user.role
                    historial.action = "Importado"
                    historial.save 
                    @errordetails.push(["Creado el prospecto: #{@objecto.inspect}" ,"#{view_context.link_to(@objecto.id, prospecto_path(@objecto.id))}".html_safe])                                  
                  else
                     logger.debug "444#######################################################################"
                    flash[:error] << "Failed to create: #{object.title}. Errors: #{@objecto.errors.full_messages.join(', ')}."
                  end                   
                end
            end
          rescue => error
            logger.debug "ERROR#######################################################################ERROR"
            @errordetails.push([row,error])
            logger.debug row
            logger.debug error.inspect
            @errores.push(error)
            logger.debug "ERROR#######################################################################ERROR"
            next
          end
        end

          rescue => error
            logger.debug "ERROR#######################################################################ERROR"
            logger.debug error.inspect
            @errores.push(error)
            logger.debug "ERROR#######################################################################ERROR"
          end

    #rescue => error
    #  flash[:error] =error
    #  render :uploadcsv
  end
  # GET /imports
  # GET /imports.json
  def index
    @imports = Import.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @imports }
    end
  end

  # GET /imports/1
  # GET /imports/1.json
  def show
    @import = Import.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @import }
    end
  end

  # GET /imports/new
  # GET /imports/new.json
  def new
    @import = Import.new


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @import }
    end
  end

  # GET /imports/1/edit
  def edit
    @import = Import.find(params[:id])
  end

  # POST /imports
  # POST /imports.json
  def create
    @import = Import.new(params[:import])
      @import.whenimported = DateTime.now
      @import.modu = "prospectos"
      @import.module = "prospectos"
    respond_to do |format|
      if @import.save

        format.html { redirect_to uploadcsv_path(@import), notice: 'Import was successfully created.' }
        format.json { render json: @import, status: :created, location: @import }
      else
        format.html { render action: "new" }
        format.json { render json: @import.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /imports/1
  # PUT /imports/1.json
  def update
    @import = Import.find(params[:id])

    respond_to do |format|
      @import.whenimported = DateTime.now
      if @import.update_attributes(params[:import])
        format.html { redirect_to @import, notice: 'Import was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @import.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imports/1
  # DELETE /imports/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
@import = Import.find(params[:id])
    @import.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end

    
    

    respond_to do |format|
      format.html { redirect_to imports_url }
      format.json { head :ok }
    end
  end
end
