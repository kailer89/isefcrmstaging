class LlamadasController < ApplicationController
  before_filter :authenticate_user!  
  
  # GET /llamadas
  # GET /llamadas.json
  def index
    if params[:user_id] != nil
      @llamadas = Llamada.where(:user_id => current_user.id)
    else
      @llamadas = Llamada.all
    end    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @llamadas }
    end
  end

  # GET /llamadas/1
  # GET /llamadas/1.json
  def show
    @llamada = Llamada.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @llamada }
    end
  end
  
  def printview
    @llamada = Llamada.find(params[:id])
    render :layout => false
  end

  # GET /llamadas/new
  # GET /llamadas/new.json
  def new
    @llamada = Llamada.new
    @llamada.model_name=params[:model_name]
    @llamada.model_id=params[:model_id]
    @llamada.created_by = current_user.id
    @llamada.user_id =current_user.id
    @llamada.sede_id =current_user.sede_id   
    @llamada.pendiente = true   
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @llamada }
    end
  end

  # GET /llamadas/1/edit
  def edit
    @llamada = Llamada.find(params[:id])
  end

  # POST /llamadas
  # POST /llamadas.json
  def create
    @llamada = Llamada.new(params[:llamada])

    respond_to do |format|
      if @llamada.save
        format.html { redirect_to "/#{@llamada.model_name}/#{@llamada.model_id}/edit/", notice: 'Llamada was successfully created.' }
        format.json { render json: @llamada, status: :created, location: @llamada }
      else
        format.html { render action: "new" }
        format.json { render json: @llamada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /llamadas/1
  # PUT /llamadas/1.json
  def update
    @llamada = Llamada.find(params[:id])

    respond_to do |format|
      if @llamada.update_attributes(params[:llamada])
        format.html { redirect_to "/#{@llamada.model_name}/#{@llamada.model_id}/edit/", notice: 'Llamada was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @llamada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /llamadas/1
  # DELETE /llamadas/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"

    @llamada = Llamada.find(params[:id])
    @llamada.destroy
else
  @llamada = Llamada.find(params[:id])
  flash[:error] ='No tienes permiso para realizar esta accion'
  redirect_to "/#{@llamada.model_name}/#{@llamada.model_id}/edit/"
  return 
end
    

    respond_to do |format|
      format.html { redirect_to "/#{@llamada.model_name}/#{@llamada.model_id}/edit/" }
      format.json { head :ok }
    end
  end

  def convertir_llamada
    @llamada = Llamada.find(params[:id])
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
