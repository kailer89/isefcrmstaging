class StatusDeLaNotificacionsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /status_de_la_notificacions
  # GET /status_de_la_notificacions.json
  def index
    @status_de_la_notificacions = StatusDeLaNotificacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_de_la_notificacions }
    end
  end

  # GET /status_de_la_notificacions/1
  # GET /status_de_la_notificacions/1.json
  def show
    @status_de_la_notificacion = StatusDeLaNotificacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_de_la_notificacion }
    end
  end

  # GET /status_de_la_notificacions/new
  # GET /status_de_la_notificacions/new.json
  def new
    @status_de_la_notificacion = StatusDeLaNotificacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_de_la_notificacion }
    end
  end

  # GET /status_de_la_notificacions/1/edit
  def edit
    @status_de_la_notificacion = StatusDeLaNotificacion.find(params[:id])
  end

  # POST /status_de_la_notificacions
  # POST /status_de_la_notificacions.json
  def create
    @status_de_la_notificacion = StatusDeLaNotificacion.new(params[:status_de_la_notificacion])

    respond_to do |format|
      if @status_de_la_notificacion.save
        format.html { redirect_to @status_de_la_notificacion, notice: 'Status de la notificacion was successfully created.' }
        format.json { render json: @status_de_la_notificacion, status: :created, location: @status_de_la_notificacion }
      else
        format.html { render action: "new" }
        format.json { render json: @status_de_la_notificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_de_la_notificacions/1
  # PUT /status_de_la_notificacions/1.json
  def update
    @status_de_la_notificacion = StatusDeLaNotificacion.find(params[:id])

    respond_to do |format|
      if @status_de_la_notificacion.update_attributes(params[:status_de_la_notificacion])
        format.html { redirect_to @status_de_la_notificacion, notice: 'Status de la notificacion was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_de_la_notificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_de_la_notificacions/1
  # DELETE /status_de_la_notificacions/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
  
     @status_de_la_notificacion = StatusDeLaNotificacion.find(params[:id])
    @status_de_la_notificacion.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
    
  

    respond_to do |format|
      format.html { redirect_to status_de_la_notificacions_url }
      format.json { head :ok }
    end
  end
end
