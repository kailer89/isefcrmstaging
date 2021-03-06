class InscritosController < ApplicationController
   
  before_filter :authenticate_user!
  
  helper_method :sort_column, :sort_direction  
  
  # GET /inscritos
  # GET /inscritos.json
  def index
    archivado = false
    modelo = Configuracione.where(:user_id=>current_user.id).first rescue nil
    if modelo != nil
      archivado = modelo.mostrar_archivados
    end  
    if modelo == nil           
    @inscritos = getInscritosForUser(current_user).order(sort_column + " " + sort_direction).paginate(:per_page => 15, :page => params[:page])
    else
      @inscritos = getInscritosForUser(current_user).where(:archivado=>archivado).order(sort_column + " " + sort_direction).paginate(:per_page => 15, :page => params[:page])
    end

        rol = Role.where(:id=>current_user.role).first

    if rol.nombre == "DN" or rol.nombre == "ACRM"
      logger.debug "admin"
    else
      #@admitidos = @admitidos.where("examinado_id in (:examinados)",:examinados=>Examinado.where("solicitante_id in (:solicitantes)",:solicitantes=>Solicitante.where("prospecto_id in (:prospectos)",:prospectos=>Prospecto.joins{solicitante}.where(:user_id=>current_user.id))))
      @inscritos = getInscritosForUser(current_user)
    end
    


      ini = params[:inicio]
      fin = params[:final]


      @q = @inscritos.ransack(params[:q])
      @q.build_grouping unless @q.groupings.any?

          if ini != nil
            @inscritos  = params[:distinct].to_i.zero? ? @q.result.paginate(:per_page => 50, :page => params[:page])  : @q.result(distinct: true).paginate(:per_page => 50, :page => params[:page]).where{id>=ini.to_s}.where{id<=fin.to_s}
          else
            @inscritos  = params[:distinct].to_i.zero? ? @q.result.paginate(:per_page => 50, :page => params[:page])  : @q.result(distinct: true).paginate(:per_page => 50, :page => params[:page])
          end



      
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inscritos }
      format.xls
    end
  end


  def printview
     @inscrito = Inscrito.find(params[:id])
    
    respond_to do |format|
       format.html {render :layout => false}
       format.pdf {
         render :pdf => "printview", :header => { :font_size => '8', :right => '[page] of [toPage]' }, :footer => {:font_size => '8', :right => 'Generated by jottinx.com' }
      }
    end

  end

  def printviewpdf
    @inscrito = Inscrito.find(params[:id])

    email = render_to_string(:action => 'printview', :layout => false)  
    email = PDFKit.new(email)    
    email = email.to_pdf  
    nombredelpdf="#{@inscrito.id} - #{@inscrito.admitidos.first.examinados.first.solicitantes.first.prospectos.first.nombre} #{@inscrito.admitidos.first.examinados.first.solicitantes.first.prospectos.first.apellido_paterno} #{@inscrito.admitidos.first.examinados.first.solicitantes.first.prospectos.first.apellido_materno}.pdf"
    ProspectosMailer.email_a_pdf(current_user.email,nombredelpdf,@inscrito, email).deliver  
      redirect_to :back 
  end  


  # GET /inscritos/1
  # GET /inscritos/1.json
  def show
    @inscrito = Inscrito.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inscrito }
    end
  end

  # GET /inscritos/new
  # GET /inscritos/new.json
  def new
    redirect_to new_prospecto_path, :flash => { :info => "No es posible crear Inscritos sin antes seguir el proceso" }    
    @inscrito = Inscrito.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inscrito }
    end
  end

  # GET /inscritos/1/edit
  def edit
    @inscrito = Inscrito.find(params[:id])
        @prospecto = @inscrito.admitidos.first.examinados.first.solicitantes.first.prospectos.first
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
  end

  # POST /inscritos
  # POST /inscritos.json
  def create
    @inscrito = Inscrito.new(params[:inscrito])

    respond_to do |format|
      if @inscrito.save
        format.html { redirect_to @inscrito, notice: 'Inscrito was successfully created.' }
        format.json { render json: @inscrito, status: :created, location: @inscrito }
      else
        format.html { render action: "new" }
        format.json { render json: @inscrito.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # PUT /inscritos/1
  # PUT /inscritos/1.json
  def update
    @inscrito = Inscrito.find(params[:id])

    respond_to do |format|
      if @inscrito.update_attributes(params[:inscrito])
        format.html { redirect_to @inscrito, notice: 'Inscrito was successfully updated. #{undo_link}' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @inscrito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inscritos/1
  # DELETE /inscritos/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
@inscrito = Inscrito.find(params[:id])
         @admitido = Admitido.find(@inscrito.admitido_id)
     @admitido.isinscrito=false
     @admitido.inscrito_id = nil
     @admitido.save
    @inscrito.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end

    
    
    respond_to do |format|
      format.html { redirect_to inscritos_url }
      format.json { head :ok }
    end
  end

  def convertir_en_admitido
     @inscrito = Inscrito.find(params[:id])
     @admitido = Admitido.find(@inscrito.admitido_id)
     @admitido.isinscrito=false
     @admitido.inscrito_id = nil
     @admitido.save
     @inscrito.destroy

     respond_to do |format|
      format.html { redirect_to edit_admitido_path(@admitido) }
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
private
  def undo_link
    view_context.link_to("undo", revert_version_path(@inscrito.versions.scoped.last), :method => :post)
  end  
end
