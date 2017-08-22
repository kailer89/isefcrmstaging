class CorreosController < ApplicationController
   
  before_filter :authenticate_user!
  

  def matches?(value)
    return false unless value

    if /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/.match(value).nil?
      false
    else
      true
    end

  end

  def send_correo_individually
    #flash[:error] = 'Envio de correos temporalmente bloqueado'
  #redirect_to "/correos"
  #return
 archivado = false
            rol = Role.where(:id=>current_user.role).first
    modelo = Configuracione.where(:user_id=>user.id).first rescue nil
    
    if modelo != nil
      archivado = modelo.mostrar_archivados
    end   

    @correo = Correo.find(params[:id])
    adjuntos = Attachment.where(:model_id=>@correo.id,:model_name=>"correos")


    mailAEnviar = params[:mailAEnviar]

    CorreosMailer.enviar_correo(current_user.email, @correo,mailAEnviar,adjuntos).deliver     
    
    
  end
  
  def enviandocorreos
    archivado = false
            rol = Role.where(:id=>current_user.role).first
    modelo = Configuracione.where(:user_id=>user.id).first rescue nil
    
    if modelo != nil
      archivado = modelo.mostrar_archivados
    end   

    @correo = Correo.find(params[:id])
    aquienSeAEnviado = []
    mails = []
    adjuntos = Attachment.where(:model_id=>@correo.id,:model_name=>"correos")


  rol = Role.where(:id=>current_user.role).first

      @correo.a_quien_enviarle_correo.each do |aquien|
        logger.debug aquien
        case aquien
          when "a_todos"
             if rol.nombre == "DN" or rol.nombre == "ACRM"    
                    @mails=getProspectosForUser(current_user).where(:archivado=>archivado).where(:validado=>false).where(:issolicitante=> false).uniq
              else
                    @mails=getProspectosForUser(current_user).where(:archivado=>archivado).where(:validado=>false).where(:issolicitante=> false).uniq
              end                
          
          when "por_usuarios"
            if rol.nombre == "DN" or rol.nombre == "ACRM"    
                  @mails=getProspectosForUser(current_user).where(:archivado=>archivado).where(:validado=>false).where(:issolicitante=> false).uniq
            else
                  @mails=getProspectosForUser(current_user).where(:archivado=>archivado).where(:validado=>false).where(:issolicitante=> false).where(:user_id=>@correo.user_id).uniq
            end        
          
          when "por_sedes"
              if rol.nombre == "DN" or rol.nombre == "ACRM"    
                    @mails=getProspectosForUser(current_user).where(:archivado=>archivado).where(:validado=>false).where(:issolicitante=> false).uniq
              else
                    @mails=getProspectosForUser(current_user).where(:archivado=>archivado).where(:validado=>false).where(:issolicitante=> false).where(:sede_id=>@correo.sede_id).uniq
              end        
          
          when "por_grupos"
            if rol.nombre == "DN" or rol.nombre == "ACRM"    
                  @mails=getProspectosForUser(current_user).where(:archivado=>archivado).where(:validado=>false).where(:issolicitante=> false).uniq
            else
                  @mails=getProspectosForUser(current_user).where(:archivado=>archivado).where(:validado=>false).where(:issolicitante=> false).where(:grupo_id=>@correo.grupo_id).uniq
            end        
          
          when "por_programa"
            if rol.nombre == "DN" or rol.nombre == "ACRM"    
               @mails=getProspectosForUser(current_user).where(:archivado=>archivado).where(:validado=>false).where(:issolicitante=> false).uniq
            else
                @mails=getProspectosForUser(current_user).where(:archivado=>archivado).where(:validado=>false).where(:issolicitante=> false).where(:programa_id=>@correo.programa_id).uniq
            end        
          
          when "por_periodo"
            periodos=InteresBasico.where(:periodo_para_ingresar_id=>@correo.por_periodo)

            periodos.each do |periodo|


              if rol.nombre == "DN" or rol.nombre == "ACRM"    
                    @mails=getProspectosForUser(current_user).where(:archivado=>archivado).where(:validado=>false).where(:issolicitante=> false).where(:id=>periodo.prospecto_id).uniq
              else
                    @mails=getProspectosForUser(current_user).where(:archivado=>archivado).where(:validado=>false).where(:issolicitante=> false).where(:id=>periodo.prospecto_id).uniq
              end        
            end
          
          when "por_estado"
            @correo.por_estado.each do |estado|
                case estado
                when "prospectos"
                  if rol.nombre == "DN" or rol.nombre == "ACRM"    
                        @mails=getProspectosForUser(current_user).where(:archivado=>archivado).where(:validado=>false).where(:issolicitante=> false).uniq
                  else
                        @mails=getProspectosForUser(current_user).where(:archivado=>archivado).where(:validado=>false).where(:issolicitante=> false).uniq
                  end              
                
                when "solicitantes"
                  if rol.nombre == "DN" or rol.nombre == "ACRM"    
                        @mails=getSolicitantesForUser(current_user).where(:isexaminado=> false).where(:archivado=>archivado).where(:isexaminado=> false).uniq
                  else
                        @mails=getSolicitantesForUser(current_user).where(:isexaminado=> false).where(:archivado=>archivado).where(:isexaminado=> false).uniq
                  end              
                
                when "examinados"
                  if rol.nombre == "DN" or rol.nombre == "ACRM"    
                        @mails=getExaminadosForUser(current_user).where(:archivado=>archivado).where(:isadmitido=>false).uniq
                  else
                        @mails=getExaminadosForUser(current_user).where(:archivado=>archivado).where(:isadmitido=>false).uniq
                  end   
                           
                when "adminitidos"
                  if rol.nombre == "DN" or rol.nombre == "ACRM"    
                        @mails=getAdmitidosForUser(current_user).where(:archivado=>archivado).where(:isinscrito=>false).uniq
                  else
                        @mails=getAdmitidosForUser(current_user).where(:archivado=>archivado).where(:isinscrito=>false).uniq
                  end              
                when "inscritos"
                  if rol.nombre == "DN" or rol.nombre == "ACRM"    
                        @mails=getInscritosForUser(current_user).uniq
                  else
                        @mails=getInscritosForUser(current_user).uniq
                  end              
              end
            end
        end            
      end



  end

  def send_correo
  #flash[:error] = 'Envio de correos temporalmente bloqueado'
  #redirect_to "/correos"
  #return
 archivado = false
            rol = Role.where(:id=>current_user.role).first
    modelo = Configuracione.where(:user_id=>user.id).first rescue nil
    
    if modelo != nil
      archivado = modelo.mostrar_archivados
    end   

    @correo = Correo.find(params[:id])
    @correo.update_attributes(params[:correo])
    aquienSeAEnviado = []
    adjuntos = Attachment.where(:model_id=>@correo.id,:model_name=>"correos")

    if @correo.es_uno_a_uno
      if @correo.mail_campana.include? ","
        @correo.mail_campana.split(",").each do |mail_campana|
          unless not matches?(mail_campana)
            
            CorreosMailer.enviar_correo(current_user.email, @correo,mail_campana,adjuntos).deliver     
            aquienSeAEnviado.push(mail_campana)
          end            
        end
      else
        unless not matches?(@correo.mail_campana)
          CorreosMailer.enviar_correo(current_user.email, @correo,@correo.mail_campana,adjuntos).deliver     
          aquienSeAEnviado.push(@correo.mail_campana)
        end
      end

      
    else
      @correo.update_attributes(params[:correo])
      redirect_to enviandocorreos_path(:id=>params[:id])
      return
    end
logger.debug "qqqqqqqqqqqqqqqqqqqqq"
correosenviados = ""
aquienSeAEnviado.each do |correo|
  correosenviados = correosenviados + correo + "</br>"
end
logger.debug "qqqqqqqqqqqqqqqqqqqqq"
flash[:notice] = 'El correo se ha enviado a ' +correosenviados
redirect_to "/correos/#{@correo.id}/edit/"
  end  
  # GET /correos
  # GET /correos.json
  def index
  rol = Role.where(:id=>current_user.role).first

   if rol.nombre == "DN" or rol.nombre == "ACRM"    
      @search = Correo.ransack(params[:search])
      @correos = @search.result.paginate(:per_page => 15, :page => params[:page])
    else
      @search = Correo.where(:sede_id=>current_user.sede_id, :created_by=>current_user.id).ransack(params[:search])
      @correos = @search.result.paginate(:per_page => 15, :page => params[:page])      
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @correos }
    end
  end

  # GET /correos/1
  # GET /correos/1.json
  def show
    @correo = Correo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @correo }
    end
  end

  # GET /correos/new
  # GET /correos/new.json
  def new
    @correo = Correo.new
    @correo.model_name=params[:model_name]
    @correo.model_id=params[:model_id]      
    @correo.created_by = current_user.id
    @correo.user_id =current_user.id
    @correo.sede_id =current_user.sede_id 
    
    if params[:model_name] == "prospectos" or params[:model_name] == "solicitantes" or params[:model_name] == "examinados" or params[:model_name] == "adminitidos" or params[:model_name] == "inscritos"   
      @correo.es_uno_a_uno = true 
    else
      @correo.es_uno_a_uno = false 
    end
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @correo }
    end
  end

  # GET /correos/1/edit
  def edit
    @correo = Correo.find(params[:id])
  end

  # correo /correos
  # correo /correos.json
  def create
    @correo = Correo.new(params[:correo])

    respond_to do |format|
      if @correo.save
        format.html { redirect_to edit_correo_path(@correo), notice: 'correo was successfully created.' }
        format.json { render json: @correo, status: :created, location: @correo }
      else
        format.html { render action: "new" }
        format.json { render json: @correo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /correos/1
  # PUT /correos/1.json
  def update
    @correo = Correo.find(params[:id])

    logger.debug "/////////////////////////////////////////////////////////////////////"
    logger.debug  params[:correo][:maildata]
    logger.debug "/////////////////////////////////////////////////////////////////////"
#<img src="https://www.willows-consulting.com/images/stories/Epicor-osCommerce.JPG" width="100%" height="100%" title="Image: https://www.willows-consulting.com/images/stories/Epicor-osCommerce.JPG">



    if params[:enviar] != nil
        
    end
    respond_to do |format|
      if @correo.update_attributes(params[:correo])
        format.html { redirect_to "/correos/#{@correo.id}/edit/", notice: 'correo was successfully created.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @correo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /correos/1
  # DELETE /correos/1.json
  def destroy

rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"


    @correo = Correo.find(params[:id])
    @correo.destroy

else
  @correo = Correo.find(params[:id])
  flash[:error] ='No tienes permiso para realizar esta accion'
  redirect_to "/correos/#{@correo.id}/edit/"
  return
end



    respond_to do |format|
      format.html { redirect_to "/correos", notice: 'correo was successfully deleted.' }
      format.json { head :ok }
    end
  end
end
