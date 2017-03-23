class EfectividadsController < ApplicationController
  
  # GET /efectividads
  # GET /efectividads.json
  def index
    @efectividads = Efectividad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @efectividads }
    end
  end

  # GET /efectividads/1
  # GET /efectividads/1.json
  def show
    @efectividad = Efectividad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @efectividad }
    end
  end

  # GET /efectividads/new
  # GET /efectividads/new.json
  def new
    @efectividad = Efectividad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @efectividad }
    end
  end

  # GET /efectividads/1/edit
  def edit
    @efectividad = Efectividad.find(params[:id])
  end

  # POST /efectividads
  # POST /efectividads.json
  def create
    @efectividad = Efectividad.new(params[:efectividad])

    respond_to do |format|
      if @efectividad.save
        format.html { redirect_to @efectividad, notice: 'Efectividad was successfully created.' }
        format.json { render json: @efectividad, status: :created, location: @efectividad }
      else
        format.html { render action: "new" }
        format.json { render json: @efectividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /efectividads/1
  # PUT /efectividads/1.json
  def update
    @efectividad = Efectividad.find(params[:id])

    respond_to do |format|
      if @efectividad.update_attributes(params[:efectividad])
        format.html { redirect_to @efectividad, notice: 'Efectividad was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @efectividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /efectividads/1
  # DELETE /efectividads/1.json
  def destroy



rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"



    
    @efectividad = Efectividad.find(params[:id])
    @efectividad.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    respond_to do |format|
      format.html { redirect_to efectividads_url }
      format.json { head :ok }
    end
  end
end
