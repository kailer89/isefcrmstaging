class PreguntaController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /pregunta
  # GET /pregunta.json
  def index
    @pregunta = Preguntum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pregunta }
    end
  end

  # GET /pregunta/1
  # GET /pregunta/1.json
  def show
    @preguntum = Preguntum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @preguntum }
    end
  end

  # GET /pregunta/new
  # GET /pregunta/new.json
  def new
    @preguntum = Preguntum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @preguntum }
    end
  end

  # GET /pregunta/1/edit
  def edit
    @preguntum = Preguntum.find(params[:id])
  end

  # POST /pregunta
  # POST /pregunta.json
  def create
    @preguntum = Preguntum.new(params[:preguntum])

    respond_to do |format|
      if @preguntum.save
        format.html { redirect_to @preguntum, notice: 'Preguntum was successfully created.' }
        format.json { render json: @preguntum, status: :created, location: @preguntum }
      else
        format.html { render action: "new" }
        format.json { render json: @preguntum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pregunta/1
  # PUT /pregunta/1.json
  def update
    @preguntum = Preguntum.find(params[:id])

    respond_to do |format|
      if @preguntum.update_attributes(params[:preguntum])
        format.html { redirect_to @preguntum, notice: 'Preguntum was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @preguntum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pregunta/1
  # DELETE /pregunta/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
  

     @preguntum = Preguntum.find(params[:id])
    @preguntum.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
   
    
  

    respond_to do |format|
      format.html { redirect_to pregunta_url }
      format.json { head :ok }
    end
  end
end
