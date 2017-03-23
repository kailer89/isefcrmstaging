class PlanDeVentaController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /plan_de_venta
  # GET /plan_de_venta.json
  def index
    @plan_de_venta = PlanDeVentum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plan_de_venta }
    end
  end

  # GET /plan_de_venta/1
  # GET /plan_de_venta/1.json
  def show
    @plan_de_ventum = PlanDeVentum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plan_de_ventum }
    end
  end

  # GET /plan_de_venta/new
  # GET /plan_de_venta/new.json
  def new
    @plan_de_ventum = PlanDeVentum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plan_de_ventum }
    end
  end

  # GET /plan_de_venta/1/edit
  def edit
    @plan_de_ventum = PlanDeVentum.find(params[:id])
  end

  # POST /plan_de_venta
  # POST /plan_de_venta.json
  def create
    @plan_de_ventum = PlanDeVentum.new(params[:plan_de_ventum])

    respond_to do |format|
      if @plan_de_ventum.save
        format.html { redirect_to @plan_de_ventum, notice: 'Plan de ventum was successfully created.' }
        format.json { render json: @plan_de_ventum, status: :created, location: @plan_de_ventum }
      else
        format.html { render action: "new" }
        format.json { render json: @plan_de_ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plan_de_venta/1
  # PUT /plan_de_venta/1.json
  def update
    @plan_de_ventum = PlanDeVentum.find(params[:id])

    respond_to do |format|
      if @plan_de_ventum.update_attributes(params[:plan_de_ventum])
        format.html { redirect_to @plan_de_ventum, notice: 'Plan de ventum was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @plan_de_ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_de_venta/1
  # DELETE /plan_de_venta/1.json
  def destroy



rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
  

     @plan_de_ventum = PlanDeVentum.find(params[:id])
    @plan_de_ventum.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
    
 

    respond_to do |format|
      format.html { redirect_to plan_de_venta_url }
      format.json { head :ok }
    end
  end
end
