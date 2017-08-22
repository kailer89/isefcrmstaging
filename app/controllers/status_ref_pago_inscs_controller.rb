class StatusRefPagoInscsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /status_ref_pago_inscs
  # GET /status_ref_pago_inscs.json
  def index
    @status_ref_pago_inscs = StatusRefPagoInsc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_ref_pago_inscs }
    end
  end

  # GET /status_ref_pago_inscs/1
  # GET /status_ref_pago_inscs/1.json
  def show
    @status_ref_pago_insc = StatusRefPagoInsc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_ref_pago_insc }
    end
  end

  # GET /status_ref_pago_inscs/new
  # GET /status_ref_pago_inscs/new.json
  def new
    @status_ref_pago_insc = StatusRefPagoInsc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_ref_pago_insc }
    end
  end

  # GET /status_ref_pago_inscs/1/edit
  def edit
    @status_ref_pago_insc = StatusRefPagoInsc.find(params[:id])
  end

  # POST /status_ref_pago_inscs
  # POST /status_ref_pago_inscs.json
  def create
    @status_ref_pago_insc = StatusRefPagoInsc.new(params[:status_ref_pago_insc])

    respond_to do |format|
      if @status_ref_pago_insc.save
        format.html { redirect_to @status_ref_pago_insc, notice: 'Status ref pago insc was successfully created.' }
        format.json { render json: @status_ref_pago_insc, status: :created, location: @status_ref_pago_insc }
      else
        format.html { render action: "new" }
        format.json { render json: @status_ref_pago_insc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_ref_pago_inscs/1
  # PUT /status_ref_pago_inscs/1.json
  def update
    @status_ref_pago_insc = StatusRefPagoInsc.find(params[:id])

    respond_to do |format|
      if @status_ref_pago_insc.update_attributes(params[:status_ref_pago_insc])
        format.html { redirect_to @status_ref_pago_insc, notice: 'Status ref pago insc was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_ref_pago_insc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_ref_pago_inscs/1
  # DELETE /status_ref_pago_inscs/1.json
  def destroy

rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"

   @status_ref_pago_insc = StatusRefPagoInsc.find(params[:id])
    @status_ref_pago_insc.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end

    
 

    respond_to do |format|
      format.html { redirect_to status_ref_pago_inscs_url }
      format.json { head :ok }
    end
  end
end
