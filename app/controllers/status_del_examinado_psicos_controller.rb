class StatusDelExaminadoPsicosController < ApplicationController
  before_filter :authenticate_user!
  # GET /status_del_examinado_psicos
  # GET /status_del_examinado_psicos.json
  def index
    @status_del_examinado_psicos = StatusDelExaminadoPsico.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_del_examinado_psicos }
    end
  end

  # GET /status_del_examinado_psicos/1
  # GET /status_del_examinado_psicos/1.json
  def show
    @status_del_examinado_psico = StatusDelExaminadoPsico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_del_examinado_psico }
    end
  end

  # GET /status_del_examinado_psicos/new
  # GET /status_del_examinado_psicos/new.json
  def new
    @status_del_examinado_psico = StatusDelExaminadoPsico.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_del_examinado_psico }
    end
  end

  # GET /status_del_examinado_psicos/1/edit
  def edit
    @status_del_examinado_psico = StatusDelExaminadoPsico.find(params[:id])
  end

  # POST /status_del_examinado_psicos
  # POST /status_del_examinado_psicos.json
  def create
    @status_del_examinado_psico = StatusDelExaminadoPsico.new(params[:status_del_examinado_psico])

    respond_to do |format|
      if @status_del_examinado_psico.save
        format.html { redirect_to @status_del_examinado_psico, notice: 'Status del examinado psico was successfully created.' }
        format.json { render json: @status_del_examinado_psico, status: :created, location: @status_del_examinado_psico }
      else
        format.html { render action: "new" }
        format.json { render json: @status_del_examinado_psico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_del_examinado_psicos/1
  # PUT /status_del_examinado_psicos/1.json
  def update
    @status_del_examinado_psico = StatusDelExaminadoPsico.find(params[:id])

    respond_to do |format|
      if @status_del_examinado_psico.update_attributes(params[:status_del_examinado_psico])
        format.html { redirect_to @status_del_examinado_psico, notice: 'Status del examinado psico was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_del_examinado_psico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_del_examinado_psicos/1
  # DELETE /status_del_examinado_psicos/1.json
  def destroy
    @status_del_examinado_psico = StatusDelExaminadoPsico.find(params[:id])
    @status_del_examinado_psico.destroy

    respond_to do |format|
      format.html { redirect_to status_del_examinado_psicos_url }
      format.json { head :ok }
    end
  end
end
