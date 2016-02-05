class StatusDelPagoDeLaInscripcionsController < ApplicationController
  before_filter :authenticate_user!
  # GET /status_del_pago_de_la_inscripcions
  # GET /status_del_pago_de_la_inscripcions.json
  def index
    @status_del_pago_de_la_inscripcions = StatusDelPagoDeLaInscripcion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_del_pago_de_la_inscripcions }
    end
  end

  # GET /status_del_pago_de_la_inscripcions/1
  # GET /status_del_pago_de_la_inscripcions/1.json
  def show
    @status_del_pago_de_la_inscripcion = StatusDelPagoDeLaInscripcion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_del_pago_de_la_inscripcion }
    end
  end

  # GET /status_del_pago_de_la_inscripcions/new
  # GET /status_del_pago_de_la_inscripcions/new.json
  def new
    @status_del_pago_de_la_inscripcion = StatusDelPagoDeLaInscripcion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_del_pago_de_la_inscripcion }
    end
  end

  # GET /status_del_pago_de_la_inscripcions/1/edit
  def edit
    @status_del_pago_de_la_inscripcion = StatusDelPagoDeLaInscripcion.find(params[:id])
  end

  # POST /status_del_pago_de_la_inscripcions
  # POST /status_del_pago_de_la_inscripcions.json
  def create
    @status_del_pago_de_la_inscripcion = StatusDelPagoDeLaInscripcion.new(params[:status_del_pago_de_la_inscripcion])

    respond_to do |format|
      if @status_del_pago_de_la_inscripcion.save
        format.html { redirect_to @status_del_pago_de_la_inscripcion, notice: 'Status del pago de la inscripcion was successfully created.' }
        format.json { render json: @status_del_pago_de_la_inscripcion, status: :created, location: @status_del_pago_de_la_inscripcion }
      else
        format.html { render action: "new" }
        format.json { render json: @status_del_pago_de_la_inscripcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_del_pago_de_la_inscripcions/1
  # PUT /status_del_pago_de_la_inscripcions/1.json
  def update
    @status_del_pago_de_la_inscripcion = StatusDelPagoDeLaInscripcion.find(params[:id])

    respond_to do |format|
      if @status_del_pago_de_la_inscripcion.update_attributes(params[:status_del_pago_de_la_inscripcion])
        format.html { redirect_to @status_del_pago_de_la_inscripcion, notice: 'Status del pago de la inscripcion was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_del_pago_de_la_inscripcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_del_pago_de_la_inscripcions/1
  # DELETE /status_del_pago_de_la_inscripcions/1.json
  def destroy
    @status_del_pago_de_la_inscripcion = StatusDelPagoDeLaInscripcion.find(params[:id])
    @status_del_pago_de_la_inscripcion.destroy

    respond_to do |format|
      format.html { redirect_to status_del_pago_de_la_inscripcions_url }
      format.json { head :ok }
    end
  end
end
