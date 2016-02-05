class StatusDeInteresDeProspectoValidadosController < ApplicationController
  before_filter :authenticate_user!
  # GET /status_de_interes_de_prospecto_validados
  # GET /status_de_interes_de_prospecto_validados.json
  def index
    @status_de_interes_de_prospecto_validados = StatusDeInteresDeProspectoValidado.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_de_interes_de_prospecto_validados }
    end
  end

  # GET /status_de_interes_de_prospecto_validados/1
  # GET /status_de_interes_de_prospecto_validados/1.json
  def show
    @status_de_interes_de_prospecto_validado = StatusDeInteresDeProspectoValidado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_de_interes_de_prospecto_validado }
    end
  end

  # GET /status_de_interes_de_prospecto_validados/new
  # GET /status_de_interes_de_prospecto_validados/new.json
  def new
    @status_de_interes_de_prospecto_validado = StatusDeInteresDeProspectoValidado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_de_interes_de_prospecto_validado }
    end
  end

  # GET /status_de_interes_de_prospecto_validados/1/edit
  def edit
    @status_de_interes_de_prospecto_validado = StatusDeInteresDeProspectoValidado.find(params[:id])
  end

  # POST /status_de_interes_de_prospecto_validados
  # POST /status_de_interes_de_prospecto_validados.json
  def create
    @status_de_interes_de_prospecto_validado = StatusDeInteresDeProspectoValidado.new(params[:status_de_interes_de_prospecto_validado])

    respond_to do |format|
      if @status_de_interes_de_prospecto_validado.save
        format.html { redirect_to @status_de_interes_de_prospecto_validado, notice: 'Status de interes de prospecto validado was successfully created.' }
        format.json { render json: @status_de_interes_de_prospecto_validado, status: :created, location: @status_de_interes_de_prospecto_validado }
      else
        format.html { render action: "new" }
        format.json { render json: @status_de_interes_de_prospecto_validado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_de_interes_de_prospecto_validados/1
  # PUT /status_de_interes_de_prospecto_validados/1.json
  def update
    @status_de_interes_de_prospecto_validado = StatusDeInteresDeProspectoValidado.find(params[:id])

    respond_to do |format|
      if @status_de_interes_de_prospecto_validado.update_attributes(params[:status_de_interes_de_prospecto_validado])
        format.html { redirect_to @status_de_interes_de_prospecto_validado, notice: 'Status de interes de prospecto validado was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_de_interes_de_prospecto_validado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_de_interes_de_prospecto_validados/1
  # DELETE /status_de_interes_de_prospecto_validados/1.json
  def destroy
    @status_de_interes_de_prospecto_validado = StatusDeInteresDeProspectoValidado.find(params[:id])
    @status_de_interes_de_prospecto_validado.destroy

    respond_to do |format|
      format.html { redirect_to status_de_interes_de_prospecto_validados_url }
      format.json { head :ok }
    end
  end
end
