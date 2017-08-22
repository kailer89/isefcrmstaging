class StatusDePagoDeExamenDeAdmisionsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /status_de_pago_de_examen_de_admisions
  # GET /status_de_pago_de_examen_de_admisions.json
  def index
    @status_de_pago_de_examen_de_admisions = StatusDePagoDeExamenDeAdmision.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_de_pago_de_examen_de_admisions }
    end
  end

  # GET /status_de_pago_de_examen_de_admisions/1
  # GET /status_de_pago_de_examen_de_admisions/1.json
  def show
    @status_de_pago_de_examen_de_admision = StatusDePagoDeExamenDeAdmision.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_de_pago_de_examen_de_admision }
    end
  end

  # GET /status_de_pago_de_examen_de_admisions/new
  # GET /status_de_pago_de_examen_de_admisions/new.json
  def new
    @status_de_pago_de_examen_de_admision = StatusDePagoDeExamenDeAdmision.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_de_pago_de_examen_de_admision }
    end
  end

  # GET /status_de_pago_de_examen_de_admisions/1/edit
  def edit
    @status_de_pago_de_examen_de_admision = StatusDePagoDeExamenDeAdmision.find(params[:id])
  end

  # POST /status_de_pago_de_examen_de_admisions
  # POST /status_de_pago_de_examen_de_admisions.json
  def create
    @status_de_pago_de_examen_de_admision = StatusDePagoDeExamenDeAdmision.new(params[:status_de_pago_de_examen_de_admision])

    respond_to do |format|
      if @status_de_pago_de_examen_de_admision.save
        format.html { redirect_to @status_de_pago_de_examen_de_admision, notice: 'Status de pago de examen de admision was successfully created.' }
        format.json { render json: @status_de_pago_de_examen_de_admision, status: :created, location: @status_de_pago_de_examen_de_admision }
      else
        format.html { render action: "new" }
        format.json { render json: @status_de_pago_de_examen_de_admision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_de_pago_de_examen_de_admisions/1
  # PUT /status_de_pago_de_examen_de_admisions/1.json
  def update
    @status_de_pago_de_examen_de_admision = StatusDePagoDeExamenDeAdmision.find(params[:id])

    respond_to do |format|
      if @status_de_pago_de_examen_de_admision.update_attributes(params[:status_de_pago_de_examen_de_admision])
        format.html { redirect_to @status_de_pago_de_examen_de_admision, notice: 'Status de pago de examen de admision was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_de_pago_de_examen_de_admision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_de_pago_de_examen_de_admisions/1
  # DELETE /status_de_pago_de_examen_de_admisions/1.json
  def destroy

rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
      @status_de_pago_de_examen_de_admision = StatusDePagoDeExamenDeAdmision.find(params[:id])
    @status_de_pago_de_examen_de_admision.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
    

    respond_to do |format|
      format.html { redirect_to status_de_pago_de_examen_de_admisions_url }
      format.json { head :ok }
    end
  end
end
