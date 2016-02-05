class UltimoGradoDeEstudiosController < ApplicationController
  before_filter :authenticate_user!
  # GET /ultimo_grado_de_estudios
  # GET /ultimo_grado_de_estudios.json
  def index
    @ultimo_grado_de_estudios = UltimoGradoDeEstudio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ultimo_grado_de_estudios }
    end
  end

  # GET /ultimo_grado_de_estudios/1
  # GET /ultimo_grado_de_estudios/1.json
  def show
    @ultimo_grado_de_estudio = UltimoGradoDeEstudio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ultimo_grado_de_estudio }
    end
  end

  # GET /ultimo_grado_de_estudios/new
  # GET /ultimo_grado_de_estudios/new.json
  def new
    @ultimo_grado_de_estudio = UltimoGradoDeEstudio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ultimo_grado_de_estudio }
    end
  end

  # GET /ultimo_grado_de_estudios/1/edit
  def edit
    @ultimo_grado_de_estudio = UltimoGradoDeEstudio.find(params[:id])
  end

  # POST /ultimo_grado_de_estudios
  # POST /ultimo_grado_de_estudios.json
  def create
    @ultimo_grado_de_estudio = UltimoGradoDeEstudio.new(params[:ultimo_grado_de_estudio])

    respond_to do |format|
      if @ultimo_grado_de_estudio.save
        format.html { redirect_to @ultimo_grado_de_estudio, notice: 'Ultimo grado de estudio was successfully created.' }
        format.json { render json: @ultimo_grado_de_estudio, status: :created, location: @ultimo_grado_de_estudio }
      else
        format.html { render action: "new" }
        format.json { render json: @ultimo_grado_de_estudio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ultimo_grado_de_estudios/1
  # PUT /ultimo_grado_de_estudios/1.json
  def update
    @ultimo_grado_de_estudio = UltimoGradoDeEstudio.find(params[:id])

    respond_to do |format|
      if @ultimo_grado_de_estudio.update_attributes(params[:ultimo_grado_de_estudio])
        format.html { redirect_to @ultimo_grado_de_estudio, notice: 'Ultimo grado de estudio was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @ultimo_grado_de_estudio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ultimo_grado_de_estudios/1
  # DELETE /ultimo_grado_de_estudios/1.json
  def destroy
    @ultimo_grado_de_estudio = UltimoGradoDeEstudio.find(params[:id])
    @ultimo_grado_de_estudio.destroy

    respond_to do |format|
      format.html { redirect_to ultimo_grado_de_estudios_url }
      format.json { head :ok }
    end
  end
end
