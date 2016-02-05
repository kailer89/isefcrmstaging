class MunicipioDeLaPreparatoriaOUniversidadDeOrigensController < ApplicationController
  before_filter :authenticate_user!
  # GET /municipio_de_la_preparatoria_o_universidad_de_origens
  # GET /municipio_de_la_preparatoria_o_universidad_de_origens.json
  def index
    @municipio_de_la_preparatoria_o_universidad_de_origens = MunicipioDeLaPreparatoriaOUniversidadDeOrigen.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @municipio_de_la_preparatoria_o_universidad_de_origens }
    end
  end

  # GET /municipio_de_la_preparatoria_o_universidad_de_origens/1
  # GET /municipio_de_la_preparatoria_o_universidad_de_origens/1.json
  def show
    @municipio_de_la_preparatoria_o_universidad_de_origen = MunicipioDeLaPreparatoriaOUniversidadDeOrigen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @municipio_de_la_preparatoria_o_universidad_de_origen }
    end
  end

  # GET /municipio_de_la_preparatoria_o_universidad_de_origens/new
  # GET /municipio_de_la_preparatoria_o_universidad_de_origens/new.json
  def new
    @municipio_de_la_preparatoria_o_universidad_de_origen = MunicipioDeLaPreparatoriaOUniversidadDeOrigen.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @municipio_de_la_preparatoria_o_universidad_de_origen }
    end
  end

  # GET /municipio_de_la_preparatoria_o_universidad_de_origens/1/edit
  def edit
    @municipio_de_la_preparatoria_o_universidad_de_origen = MunicipioDeLaPreparatoriaOUniversidadDeOrigen.find(params[:id])
  end

  # POST /municipio_de_la_preparatoria_o_universidad_de_origens
  # POST /municipio_de_la_preparatoria_o_universidad_de_origens.json
  def create
    @municipio_de_la_preparatoria_o_universidad_de_origen = MunicipioDeLaPreparatoriaOUniversidadDeOrigen.new(params[:municipio_de_la_preparatoria_o_universidad_de_origen])

    respond_to do |format|
      if @municipio_de_la_preparatoria_o_universidad_de_origen.save
        format.html { redirect_to @municipio_de_la_preparatoria_o_universidad_de_origen, notice: 'Municipio de la preparatoria o universidad de origen was successfully created.' }
        format.json { render json: @municipio_de_la_preparatoria_o_universidad_de_origen, status: :created, location: @municipio_de_la_preparatoria_o_universidad_de_origen }
      else
        format.html { render action: "new" }
        format.json { render json: @municipio_de_la_preparatoria_o_universidad_de_origen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /municipio_de_la_preparatoria_o_universidad_de_origens/1
  # PUT /municipio_de_la_preparatoria_o_universidad_de_origens/1.json
  def update
    @municipio_de_la_preparatoria_o_universidad_de_origen = MunicipioDeLaPreparatoriaOUniversidadDeOrigen.find(params[:id])

    respond_to do |format|
      if @municipio_de_la_preparatoria_o_universidad_de_origen.update_attributes(params[:municipio_de_la_preparatoria_o_universidad_de_origen])
        format.html { redirect_to @municipio_de_la_preparatoria_o_universidad_de_origen, notice: 'Municipio de la preparatoria o universidad de origen was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @municipio_de_la_preparatoria_o_universidad_de_origen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /municipio_de_la_preparatoria_o_universidad_de_origens/1
  # DELETE /municipio_de_la_preparatoria_o_universidad_de_origens/1.json
  def destroy
    @municipio_de_la_preparatoria_o_universidad_de_origen = MunicipioDeLaPreparatoriaOUniversidadDeOrigen.find(params[:id])
    @municipio_de_la_preparatoria_o_universidad_de_origen.destroy

    respond_to do |format|
      format.html { redirect_to municipio_de_la_preparatoria_o_universidad_de_origens_url }
      format.json { head :ok }
    end
  end
end
