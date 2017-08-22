class StatusDelAdmitidosController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /status_del_admitidos
  # GET /status_del_admitidos.json
  def index
    @status_del_admitidos = StatusDelAdmitido.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_del_admitidos }
    end
  end

  # GET /status_del_admitidos/1
  # GET /status_del_admitidos/1.json
  def show
    @status_del_admitido = StatusDelAdmitido.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_del_admitido }
    end
  end

  # GET /status_del_admitidos/new
  # GET /status_del_admitidos/new.json
  def new
    @status_del_admitido = StatusDelAdmitido.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_del_admitido }
    end
  end

  # GET /status_del_admitidos/1/edit
  def edit
    @status_del_admitido = StatusDelAdmitido.find(params[:id])
  end

  # POST /status_del_admitidos
  # POST /status_del_admitidos.json
  def create
    @status_del_admitido = StatusDelAdmitido.new(params[:status_del_admitido])

    respond_to do |format|
      if @status_del_admitido.save
        format.html { redirect_to @status_del_admitido, notice: 'Status del admitido was successfully created.' }
        format.json { render json: @status_del_admitido, status: :created, location: @status_del_admitido }
      else
        format.html { render action: "new" }
        format.json { render json: @status_del_admitido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_del_admitidos/1
  # PUT /status_del_admitidos/1.json
  def update
    @status_del_admitido = StatusDelAdmitido.find(params[:id])

    respond_to do |format|
      if @status_del_admitido.update_attributes(params[:status_del_admitido])
        format.html { redirect_to @status_del_admitido, notice: 'Status del admitido was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_del_admitido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_del_admitidos/1
  # DELETE /status_del_admitidos/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"

    @status_del_admitido = StatusDelAdmitido.find(params[:id])
    @status_del_admitido.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
   

    respond_to do |format|
      format.html { redirect_to status_del_admitidos_url }
      format.json { head :ok }
    end
  end
end
