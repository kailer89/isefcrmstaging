class TareasController < ApplicationController
  before_filter :authenticate_user!
  

  # GET /tareas
  # GET /tareas.json
  def index
    if params[:user_id] != nil
      @tareas = Tarea.where(:user_id => current_user.id)
    else
      @tareas = Tarea.all
    end
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tareas }
    end
  end
  def printview
    @tarea = Tarea.find(params[:id])
    render :layout => false
  end

  # GET /tareas/1
  # GET /tareas/1.json
  def show
    @tarea = Tarea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tarea }
    end
  end

  # GET /tareas/new
  # GET /tareas/new.json
  def new
    @tarea = Tarea.new
    @tarea.model_name=params[:model_name]
    @tarea.model_id=params[:model_id]
    @tarea.created_by = current_user.id
    @tarea.user_id =current_user.id
    @tarea.sede_id =current_user.sede_id   
      @tarea.pendiente =true

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tarea }
    end
  end

  # GET /tareas/1/edit
  def edit
    @tarea = Tarea.find(params[:id])
  end

  # POST /tareas
  # POST /tareas.json
  def create
    @tarea = Tarea.new(params[:tarea])

logger.debug "///////////////////////////////////"
    logger.debug @tarea.model_id
    logger.debug "///////////////////////////////////"


    if @tarea.model_id != nil
      respond_to do |format|
        if @tarea.save
          format.html { redirect_to "/#{@tarea.model_name}/#{@tarea.model_id}/edit/", notice: 'Tarea was successfully created.' }
          format.json { render json: @tarea, status: :created, location: @tarea }
        else
          format.html { render action: "new" }
          format.json { render json: @tarea.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to :back }
        format.json { head :no_content }
      end         
    end

  end

  # PUT /tareas/1
  # PUT /tareas/1.json
  def update
    @tarea = Tarea.find(params[:id])

    if @tarea.model_id != nil
      respond_to do |format|
        if @tarea.update_attributes(params[:tarea])
          format.html { redirect_to "/#{@tarea.model_name}/#{@tarea.model_id}/edit/", notice: 'Tarea was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render action: "edit" }
          format.json { render json: @tarea.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to :back }
        format.json { head :no_content }
      end         
    end

  end

  # DELETE /tareas/1
  # DELETE /tareas/1.json
  def destroy

rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"


    @tarea = Tarea.find(params[:id])
    @tarea.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end



    if @tarea.model_id != nil
      respond_to do |format|
        format.html { redirect_to "/#{@tarea.model_name}/#{@tarea.model_id}/edit/"}
        format.json { head :ok }
      end
    else
      respond_to do |format|
        format.html { redirect_to :back }
        format.json { head :no_content }
      end        
    end

  end
  def convertir_tarea
    @llamada = Tarea.find(params[:id])
    if @llamada.pendiente == nil
      @llamada.pendiente =true
    else
      if @llamada.pendiente == true
        @llamada.pendiente =false
      else
        @llamada.pendiente = true
      end
    end
    @llamada.save
    redirect_to :back, :flash => { :info => "Cambiado estado de pendiente." }
  end  
end
