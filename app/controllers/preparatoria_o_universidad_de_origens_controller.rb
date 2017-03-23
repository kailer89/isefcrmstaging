class PreparatoriaOUniversidadDeOrigensController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /preparatoria_o_universidad_de_origens
  # GET /preparatoria_o_universidad_de_origens.json
  def index
    @preparatoria_o_universidad_de_origens = PreparatoriaOUniversidadDeOrigen.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @preparatoria_o_universidad_de_origens }
    end
  end

  # GET /preparatoria_o_universidad_de_origens/1
  # GET /preparatoria_o_universidad_de_origens/1.json
  def show
    @preparatoria_o_universidad_de_origen = PreparatoriaOUniversidadDeOrigen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @preparatoria_o_universidad_de_origen }
    end
  end

  # GET /preparatoria_o_universidad_de_origens/new
  # GET /preparatoria_o_universidad_de_origens/new.json
  def new
    @preparatoria_o_universidad_de_origen = PreparatoriaOUniversidadDeOrigen.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @preparatoria_o_universidad_de_origen }
    end
  end

  # GET /preparatoria_o_universidad_de_origens/1/edit
  def edit
    @preparatoria_o_universidad_de_origen = PreparatoriaOUniversidadDeOrigen.find(params[:id])
  end

  # POST /preparatoria_o_universidad_de_origens
  # POST /preparatoria_o_universidad_de_origens.json
  def create
    @preparatoria_o_universidad_de_origen = PreparatoriaOUniversidadDeOrigen.new(params[:preparatoria_o_universidad_de_origen])

    respond_to do |format|
      if @preparatoria_o_universidad_de_origen.save
        format.html { redirect_to @preparatoria_o_universidad_de_origen, notice: 'Preparatoria o universidad de origen was successfully created.' }
        format.json { render json: @preparatoria_o_universidad_de_origen, status: :created, location: @preparatoria_o_universidad_de_origen }
      else
        format.html { render action: "new" }
        format.json { render json: @preparatoria_o_universidad_de_origen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /preparatoria_o_universidad_de_origens/1
  # PUT /preparatoria_o_universidad_de_origens/1.json
  def update
    @preparatoria_o_universidad_de_origen = PreparatoriaOUniversidadDeOrigen.find(params[:id])

    respond_to do |format|
      if @preparatoria_o_universidad_de_origen.update_attributes(params[:preparatoria_o_universidad_de_origen])
        format.html { redirect_to @preparatoria_o_universidad_de_origen, notice: 'Preparatoria o universidad de origen was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @preparatoria_o_universidad_de_origen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preparatoria_o_universidad_de_origens/1
  # DELETE /preparatoria_o_universidad_de_origens/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
  
 @preparatoria_o_universidad_de_origen = PreparatoriaOUniversidadDeOrigen.find(params[:id])
    @preparatoria_o_universidad_de_origen.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
    
   

    respond_to do |format|
      format.html { redirect_to preparatoria_o_universidad_de_origens_url }
      format.json { head :ok }
    end
  end
end
