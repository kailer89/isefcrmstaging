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


  def send_correo
    @correo = Correo.find(params[:id])
    @correo.update_attributes(params[:correo])
    aquienSeAEnviado = []


    if @correo.es_uno_a_uno
      if @correo.mail_campana.include? ","
        @correo.mail_campana.split(",").each do |mail_campana|
          unless not matches?(mail_campana)
            adjuntos = Attachment.where(:model_id=>@correo.id,:model_name=>"correos")
            CorreosMailer.enviar_correo(current_user.email, @correo,mail_campana,adjuntos).deliver     
            aquienSeAEnviado.push(mail_campana)
          end            
        end
      else
        unless not matches?(@correo.mail_campana)
          adjuntos = Attachment.where(:model_id=>@correo.id,:model_name=>"correos")
          CorreosMailer.enviar_correo(current_user.email, @correo,@correo.mail_campana,adjuntos).deliver     
          aquienSeAEnviado.push(@correo.mail_campana)
        end
      end

      
    else
#[["A todos","a_todos"],["Por Usuarios","por_usuarios"],["Por Sedes","por_sedes"],["Por Grupos","por_grupos"],["Por Programa","por_programa"],["Por periodo","por_periodo"],["Por Estado","por_estado"]]

      @correo.a_quien_enviarle_correo.each do |aquien|
        logger.debug aquien
        case aquien
        when "a_todos"

          mails=Prospecto.all
          mails.each do |mail|
            if mail.email != ""
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(mail.email)   
              end        
            else
              unless not matches?(mail.email)
                logger.debug "a aaaa"
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(current_user.email)   
              end    
            end             
          end                  
        when "por_usuarios"
          mails=Prospecto.where(:user_id=>@correo.user_id)
          mails.each do |mail|
            if mail.email != ""
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(mail.email)   
              end               
            else
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(current_user.email)   
              end         
            end             
          end
        when "por_sedes"
          mails=Prospecto.where(:sede_id=>@correo.sede_id)
          mails.each do |mail|
            if mail.email != ""
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(mail.email)   
              end              
            else
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(current_user.email)   
              end    
            end             
          end
        when "por_grupos"
          mails=Prospecto.where(:grupo_id=>@correo.grupo_id)
          mails.each do |mail|
            if mail.email != ""
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(mail.email)   
              end          
            else
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(current_user.email)   
              end     
            end             
          end
        when "por_programa"
          mails=Prospecto.where(:programa_id=>@correo.programa_id)
          mails.each do |mail|
            if mail.email != ""
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(mail.email)   
              end             
            else
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(current_user.email)   
              end      
            end      
          end  
        when "por_periodo"
          periodos=InteresBasico.where(:periodo_para_ingresar_id=>@correo.por_periodo)

          periodos.each do |periodo|
            mails=Prospecto.where(:id=>periodo.prospecto_id)
            mails.each do |mail|
              if mail.email != ""
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(mail.email)   
              end              
              else
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(current_user.email)   
              end        
              end   
          end
        end
        when "por_estado"
          @correo.por_estado.each do |estado|
            case estado
            when "prospectos"
              @prospectos = Prospecto.where(:is_solicitante=>false) 

              @prospectos.each do |prospecto|
                if mail.email != ""
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(mail.email)   
              end         
                else
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(current_user.email)   
              end        
                end                           
              end                  
            when "solicitantes"
              historial = History.where("action like '%icitante%'")
              @prospectos = Prospecto.where("prospectos.id in (:historyids)",:historyids=>historial) 

              @prospectos.each do |prospecto|
                if mail.email != ""
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(mail.email)   
              end             
                else
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(current_user.email)   
              end          
                end                           
              end     

            when "examinados"
            historial = History.where("action like '%xaminado%'")
            @prospectos = Prospecto.where("prospectos.id in (:historyids)",:historyids=>historial)  
              @prospectos.each do |prospecto|
                if mail.email != ""
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(mail.email)   
              end              
                else
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(current_user.email)   
              end     
                end                           
              end                           
            when "adminitidos"
            historial = History.where("action like '%dmitido%'")
            @prospectos = Prospecto.where("prospectos.id in (:historyids)",:historyids=>historial)              
              @prospectos.each do |prospecto|
                if mail.email != ""
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(mail.email)   
              end             
                else
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(current_user.email)   
              end       
                end                           
              end               
            when "inscritos"
            historial = History.where("action like '%nscrito%'")
            @prospectos = Prospectowhere("prospectos.id in (:historyids)",:historyids=>historial)
              @prospectos.each do |prospecto|
                if mail.email != ""
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(mail.email)   
              end             
                else
              unless not matches?(mail.email)
                CorreosMailer.enviar_correo(current_user.email, @correo,mail.email).deliver   
                aquienSeAEnviado.push(current_user.email)   
              end      
                end                           
              end            
            end #end del case
          end #end del each
        end
      end
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

   if rol.nombre == "D" or rol.nombre == "ACRM" or rol.nombre == "AL" or rol.nombre == "A"      
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
  flash[:error] ='No tienes permiso para realizar esta accion'

end



    respond_to do |format|
      format.html { redirect_to "/correos/#{@correo.id}/edit/", notice: 'correo was successfully created.' }
      format.json { head :ok }
    end
  end
end
