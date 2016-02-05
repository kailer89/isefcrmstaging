class StatusDelExaminadoPaasController < ApplicationController
  before_filter :authenticate_user!
  # GET /status_del_examinado_paas
  # GET /status_del_examinado_paas.json
  def index
    @status_del_examinado_paas = StatusDelExaminadoPaa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_del_examinado_paas }
    end
  end

  # GET /status_del_examinado_paas/1
  # GET /status_del_examinado_paas/1.json
  def show
    @status_del_examinado_paa = StatusDelExaminadoPaa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_del_examinado_paa }
    end
  end

  # GET /status_del_examinado_paas/new
  # GET /status_del_examinado_paas/new.json
  def new
    @status_del_examinado_paa = StatusDelExaminadoPaa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_del_examinado_paa }
    end
  end

  # GET /status_del_examinado_paas/1/edit
  def edit
    @status_del_examinado_paa = StatusDelExaminadoPaa.find(params[:id])
  end

  # POST /status_del_examinado_paas
  # POST /status_del_examinado_paas.json
  def create
    @status_del_examinado_paa = StatusDelExaminadoPaa.new(params[:status_del_examinado_paa])

    respond_to do |format|
      if @status_del_examinado_paa.save
        format.html { redirect_to @status_del_examinado_paa, notice: 'Status del examinado paa was successfully created.' }
        format.json { render json: @status_del_examinado_paa, status: :created, location: @status_del_examinado_paa }
      else
        format.html { render action: "new" }
        format.json { render json: @status_del_examinado_paa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_del_examinado_paas/1
  # PUT /status_del_examinado_paas/1.json
  def update
    @status_del_examinado_paa = StatusDelExaminadoPaa.find(params[:id])

    respond_to do |format|
      if @status_del_examinado_paa.update_attributes(params[:status_del_examinado_paa])
        format.html { redirect_to @status_del_examinado_paa, notice: 'Status del examinado paa was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_del_examinado_paa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_del_examinado_paas/1
  # DELETE /status_del_examinado_paas/1.json
  def destroy
    @status_del_examinado_paa = StatusDelExaminadoPaa.find(params[:id])
    @status_del_examinado_paa.destroy

    respond_to do |format|
      format.html { redirect_to status_del_examinado_paas_url }
      format.json { head :ok }
    end
  end
end
