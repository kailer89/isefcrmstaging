class SolicitantesController < ApplicationController
  before_filter :authenticate_user!
  
  helper_method :sort_column, :sort_direction
  
  # GET /solicitantes
  # GET /solicitantes.json
  def index
    archivado = false
    modelo = Configuracione.where(:user_id=>current_user.id).first rescue nil
    if modelo != nil
      archivado = modelo.mostrar_archivados
    end


    if modelo == nil
    @solicitantes = Solicitante.where(:isexaminado=>false).order(sort_column + " " + sort_direction).paginate(:per_page => 15, :page => params[:page])
    else
      @solicitantes = Solicitante.where(:archivado=>archivado).where(:isexaminado=>false).order(sort_column + " " + sort_direction).paginate(:per_page => 15, :page => params[:page])
    end


    archivado = false
    modelo = Configuracione.where(:user_id=>current_user.id).first rescue nil
    if modelo != nil
      archivado = modelo.mostrar_archivados
    end  

    rol = Role.where(:id=>current_user.role).first
    if rol.nombre == "DN" or rol.nombre == "ACRM"  
      logger.debug "admin"
    else
      @solicitantes=@solicitantes.where("prospecto_id in (:prospectos)",:prospectos=>Prospecto.where(:sede_id=>current_user.sede).joins{solicitante}.where(:user_id=>current_user.id))
    end

      @q = @solicitantes.ransack(params[:q])
      @q.build_grouping unless @q.groupings.any?
      @solicitantes  = params[:distinct].to_i.zero? ? @q.result.paginate(:per_page => 50, :page => params[:page])  : @q.result(distinct: true).paginate(:per_page => 50, :page => params[:page]) 



    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @solicitantes }
      format.xls
    end
  end

  def printview
     @solicitante = Solicitante.find(params[:id])
    
    respond_to do |format|
       format.html {render :layout => false}
       format.pdf {
         render :pdf => "printview", :header => { :font_size => '8', :right => '[page] of [toPage]' }, :footer => {:font_size => '8', :right => 'Generated by jottinx.com' }
      }
    end

  end

  def printviewpdf
    @solicitante = Solicitante.find(params[:id])

    email = render_to_string(:action => 'printview', :layout => false)  
    email = PDFKit.new(email)    
    email = email.to_pdf  
    nombredelpdf="#{@solicitante.id} - #{@solicitante.prospectos.first.nombre} #{@solicitante.prospectos.first.apellido_paterno} #{@solicitante.prospectos.first.apellido_materno}.pdf"
    ProspectosMailer.email_a_pdf(current_user.email,nombredelpdf,@solicitante, email).deliver  
      redirect_to :back 
  end

  # GET /solicitantes/1
  # GET /solicitantes/1.json
  def show
    @solicitante = Solicitante.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @solicitante }
    end
  end

  # GET /solicitantes/new
  # GET /solicitantes/new.json
  def new
    redirect_to new_prospecto_path, :flash => { :info => "No es posible crear Solicitantes sin antes seguir el proceso" }

  end

  # GET /solicitantes/1/edit
  def edit
    @solicitante = Solicitante.find(params[:id])
    @prospecto = @solicitante.prospectos.first
      if @prospecto!=nil
        @tareas1 = Tarea.where(:model_name=>"prospectos",:model_id=>@prospecto.id)
        @memos1 = Memo.where(:model_name=>"prospectos",:model_id=>@prospecto.id)
        @attachments1 = Attachment.where(:model_name=>"prospectos",:model_id=>@prospecto.id)
        @llamadas1 = Llamada.where(:model_name=>"prospectos",:model_id=>@prospecto.id)
        @correos1 = Correo.where(:model_name=>"prospectos",:model_id=>@prospecto.id)
        if @prospecto.solicitante_id != nil
          @solicitante = Solicitante.find(@prospecto.solicitante_id)
          @llamadas2 = Llamada.where(:model_name=>"solicitantes",:model_id=>@solicitante.id)
          @correos2 = Correo.where(:model_name=>"solicitantes",:model_id=>@solicitante.id)
          @attachments2 = Attachment.where(:model_name=>"solicitantes",:model_id=>@solicitante.id)
          @memos2 = Memo.where(:model_name=>"solicitantes",:model_id=>@solicitante.id)
          @tareas2 = Tarea.where(:model_name=>"solicitantes",:model_id=>@solicitante.id)
          #check if he has a examinado
          if @solicitante.examinado_id !=nil
            @examinado = Examinado.find(@solicitante.examinado_id)
            @tareas3 = Tarea.where(:model_name=>"examinados",:model_id=>@examinado.id)
            @memos3 = Memo.where(:model_name=>"examinados",:model_id=>@examinado.id)
            @correos3 = Correo.where(:model_name=>"examinados",:model_id=>@examinado.id)
            @attachments3 = Attachment.where(:model_name=>"examinados",:model_id=>@examinado.id)
            @llamadas3 = Llamada.where(:model_name=>"examinados",:model_id=>@examinado.id)
            
            #check if he has an admitido
            if @examinado.admitido_id !=nil
              @admitido = Admitido.find(@examinado.admitido_id)
              @tareas4 = Tarea.where(:model_name=>"admitidos",:model_id=>@admitido.id)
              @correos4 = Correo.where(:model_name=>"admitidos",:model_id=>@admitido.id)
              @attachments4 = Attachment.where(:model_name=>"admitidos",:model_id=>@admitido.id)
              @llamadas4 = Llamada.where(:model_name=>"admitidos",:model_id=>@admitido.id)
              @memos4 = Memo.where(:model_name=>"admitidos",:model_id=>@admitido.id)
              
              #check if he has an inscrito
              if @admitido.inscrito_id !=nil
                @inscrito = Inscrito.find(@admitido.inscrito_id)
                @tareas5 = Tarea.where(:model_name=>"inscritos",:model_id=>@inscrito.id)
                @memos5 = Memo.where(:model_name=>"inscritos",:model_id=>@inscrito.id)
                @correos5 = Correo.where(:model_name=>"inscritos",:model_id=>@inscrito.id)
                @attachments5 = Attachment.where(:model_name=>"inscritos",:model_id=>@inscrito.id)
                @llamadas5 = Llamada.where(:model_name=>"inscritos",:model_id=>@inscrito.id)
                
              end
            end
          end
        end
        end
      @tareas=[@tareas1,@tareas2,@tareas3,@tareas4,@tareas5].flatten.compact.sort
      @llamadas =[@llamadas1,@llamadas2,@llamadas3,@llamadas4,@llamadas5].flatten.compact.sort
      @memos =[@memos1,@memos2,@memos3,@memos4,@memos5].flatten.compact.sort
      @correos =[@correos1,@correos2,@correos3,@correos4,@correos5].flatten.compact.sort
      @attachments =[@attachments1,@attachments2,@attachments3,@attachments4,@attachments5].flatten.compact.sort      
    #@solicitante.becacreditos.build
    #@prospeecto = Solicitante.prospecto
  end

  # POST /solicitantes
  # POST /solicitantes.json
  def create
    @solicitante = Solicitante.new(params[:solicitante])

    respond_to do |format|
      if @solicitante.save
        format.html { redirect_to @solicitante, notice: 'Solicitante was successfully created.' }
        format.json { render json: @solicitante, status: :created, location: @solicitante }
      else
        format.html { render action: "new" }
        format.json { render json: @solicitante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /solicitantes/1
  # PUT /solicitantes/1.json
  def update
    @solicitante = Solicitante.find(params[:id])

    respond_to do |format|
      if @solicitante.update_attributes(params[:solicitante])
        format.html { redirect_to @solicitante, notice: 'Solicitante was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @solicitante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitantes/1
  # DELETE /solicitantes/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
  
  
  
    @solicitante = Solicitante.find(params[:id])
    @solicitante.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end

  

    respond_to do |format|
      format.html { redirect_to solicitantes_url }
      format.json { head :ok }
    end
  end
  def sort_column
    if params[:sort] !=nil
      params[:sort] 
    else
      "id"
    end
  end
  
  def sort_direction
    if params[:direction] != nil
        params[:direction]
    else
      "desc"
    end
  end  

  #convierte el prospecto en solicitante
  # POST /solicitantes/:id/convertir
  def convertir_solicitante
    @solicitante = Solicitante.find(params[:id])
    @solicitante.isexaminado=true
    solicitante=@solicitante
    newexaminado=Examinado.create(:solicitante_id=>solicitante.id)
    newexaminado.isadmitido = false
    newexaminado.archivado =false
    newexaminado.save
    @solicitante.examinado_id = newexaminado.id
    @solicitante.save
    historial = History.new
    historial.model_name = "prospectos"
    historial.model_id = @solicitante.prospectos.first.id
    historial.user_id = current_user.id
    historial.role = current_user.role        
    historial.action = "Convertido en Examinado"
    historial.save
    #new_user = User.new(old_user.attributes.merge(:login => "newlogin"))
    redirect_to edit_examinado_path(newexaminado), :flash => { :info => "Solicitante Convertido en Examinado" }
  end  
private
  def undo_link
    view_context.link_to("undo", revert_version_path(@solicitante.versions.scoped.last), :method => :post)
  end 
end