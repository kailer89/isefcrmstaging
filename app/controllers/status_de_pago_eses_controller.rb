class StatusDePagoEsesController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /status_de_pago_eses
  # GET /status_de_pago_eses.json
  def index
    @status_de_pago_eses = StatusDePagoEse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_de_pago_eses }
    end
  end

  # GET /status_de_pago_eses/1
  # GET /status_de_pago_eses/1.json
  def show
    @status_de_pago_ese = StatusDePagoEse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_de_pago_ese }
    end
  end

  # GET /status_de_pago_eses/new
  # GET /status_de_pago_eses/new.json
  def new
    @status_de_pago_ese = StatusDePagoEse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_de_pago_ese }
    end
  end

  # GET /status_de_pago_eses/1/edit
  def edit
    @status_de_pago_ese = StatusDePagoEse.find(params[:id])
  end

  # POST /status_de_pago_eses
  # POST /status_de_pago_eses.json
  def create
    @status_de_pago_ese = StatusDePagoEse.new(params[:status_de_pago_ese])

    respond_to do |format|
      if @status_de_pago_ese.save
        format.html { redirect_to @status_de_pago_ese, notice: 'Status de pago ese was successfully created.' }
        format.json { render json: @status_de_pago_ese, status: :created, location: @status_de_pago_ese }
      else
        format.html { render action: "new" }
        format.json { render json: @status_de_pago_ese.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_de_pago_eses/1
  # PUT /status_de_pago_eses/1.json
  def update
    @status_de_pago_ese = StatusDePagoEse.find(params[:id])

    respond_to do |format|
      if @status_de_pago_ese.update_attributes(params[:status_de_pago_ese])
        format.html { redirect_to @status_de_pago_ese, notice: 'Status de pago ese was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_de_pago_ese.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_de_pago_eses/1
  # DELETE /status_de_pago_eses/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"

    @status_de_pago_ese = StatusDePagoEse.find(params[:id])
    @status_de_pago_ese.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
    


    respond_to do |format|
      format.html { redirect_to status_de_pago_eses_url }
      format.json { head :ok }
    end
  end
end
