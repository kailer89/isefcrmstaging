class RpmsController < ApplicationController
before_filter :authenticate_user!

  # GET /rpms
  # GET /rpms.json
  def index
  rol = Role.where(:id=>current_user.role).first

   if rol.nombre == "D" or rol.nombre == "ACRM" or rol.nombre == "AL" or rol.nombre == "A"     
    @rpms = Rpm.all
  else
    @rpms = Rpm.where(:created_by=>current_user.id)
  end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rpms }
    end
  end

  # GET /rpms/1
  # GET /rpms/1.json
  def show
    @rpm = Rpm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rpm }
    end
  end

  # GET /rpms/new
  # GET /rpms/new.json
  def new
    @rpm = Rpm.new
    @rpm.created_by = current_user.id

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rpm }
    end
  end

  # GET /rpms/1/edit
  def edit
    @rpm = Rpm.find(params[:id])
  end

  # POST /rpms
  # POST /rpms.json
  def create
    @rpm = Rpm.new(params[:rpm])

    respond_to do |format|
      if @rpm.save
        format.html { redirect_to imprimir_rpm_path(@rpm), notice: 'Rpm was successfully created.' }
        format.json { render json: @rpm, status: :created, location: @rpm }
      else
        format.html { render action: "new" }
        format.json { render json: @rpm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rpms/1
  # PUT /rpms/1.json
  def update
    @rpm = Rpm.find(params[:id])
    @rpm.save
    respond_to do |format|
      if @rpm.update_attributes(params[:rpm])
        format.html { redirect_to imprimir_rpm_path(@rpm) }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @rpm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rpms/1
  # DELETE /rpms/1.json
  def destroy



rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
  
    
    @rpm = Rpm.find(params[:id])
    @rpm.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end

    respond_to do |format|
      format.html { redirect_to rpms_url }
      format.json { head :ok }
    end
  end

  def imprimir
  end

  def printview
    @rpm = Rpm.find(params[:id])
    render :layout => false  
  end
end
