class DuracionEnTextosController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /duracion_en_textos
  # GET /duracion_en_textos.json
  def index
    @duracion_en_textos = DuracionEnTexto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @duracion_en_textos }
    end
  end

  # GET /duracion_en_textos/1
  # GET /duracion_en_textos/1.json
  def show
    @duracion_en_texto = DuracionEnTexto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @duracion_en_texto }
    end
  end

  # GET /duracion_en_textos/new
  # GET /duracion_en_textos/new.json
  def new
    @duracion_en_texto = DuracionEnTexto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @duracion_en_texto }
    end
  end

  # GET /duracion_en_textos/1/edit
  def edit
    @duracion_en_texto = DuracionEnTexto.find(params[:id])
  end

  # POST /duracion_en_textos
  # POST /duracion_en_textos.json
  def create
    @duracion_en_texto = DuracionEnTexto.new(params[:duracion_en_texto])

    respond_to do |format|
      if @duracion_en_texto.save
        format.html { redirect_to @duracion_en_texto, notice: 'Duracion en texto was successfully created.' }
        format.json { render json: @duracion_en_texto, status: :created, location: @duracion_en_texto }
      else
        format.html { render action: "new" }
        format.json { render json: @duracion_en_texto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /duracion_en_textos/1
  # PUT /duracion_en_textos/1.json
  def update
    @duracion_en_texto = DuracionEnTexto.find(params[:id])

    respond_to do |format|
      if @duracion_en_texto.update_attributes(params[:duracion_en_texto])
        format.html { redirect_to @duracion_en_texto, notice: 'Duracion en texto was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @duracion_en_texto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duracion_en_textos/1
  # DELETE /duracion_en_textos/1.json
  def destroy



rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"


  
    @duracion_en_texto = DuracionEnTexto.find(params[:id])
    @duracion_en_texto.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end


    respond_to do |format|
      format.html { redirect_to duracion_en_textos_url }
      format.json { head :ok }
    end
  end
end
