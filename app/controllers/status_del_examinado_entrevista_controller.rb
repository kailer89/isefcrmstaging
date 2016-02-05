class StatusDelExaminadoEntrevistaController < ApplicationController
  before_filter :authenticate_user!
  # GET /status_del_examinado_entrevista
  # GET /status_del_examinado_entrevista.json
  def index
    @status_del_examinado_entrevista = StatusDelExaminadoEntrevistum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_del_examinado_entrevista }
    end
  end

  # GET /status_del_examinado_entrevista/1
  # GET /status_del_examinado_entrevista/1.json
  def show
    @status_del_examinado_entrevistum = StatusDelExaminadoEntrevistum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_del_examinado_entrevistum }
    end
  end

  # GET /status_del_examinado_entrevista/new
  # GET /status_del_examinado_entrevista/new.json
  def new
    @status_del_examinado_entrevistum = StatusDelExaminadoEntrevistum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_del_examinado_entrevistum }
    end
  end

  # GET /status_del_examinado_entrevista/1/edit
  def edit
    @status_del_examinado_entrevistum = StatusDelExaminadoEntrevistum.find(params[:id])
  end

  # POST /status_del_examinado_entrevista
  # POST /status_del_examinado_entrevista.json
  def create
    @status_del_examinado_entrevistum = StatusDelExaminadoEntrevistum.new(params[:status_del_examinado_entrevistum])

    respond_to do |format|
      if @status_del_examinado_entrevistum.save
        format.html { redirect_to @status_del_examinado_entrevistum, notice: 'Status del examinado entrevistum was successfully created.' }
        format.json { render json: @status_del_examinado_entrevistum, status: :created, location: @status_del_examinado_entrevistum }
      else
        format.html { render action: "new" }
        format.json { render json: @status_del_examinado_entrevistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_del_examinado_entrevista/1
  # PUT /status_del_examinado_entrevista/1.json
  def update
    @status_del_examinado_entrevistum = StatusDelExaminadoEntrevistum.find(params[:id])

    respond_to do |format|
      if @status_del_examinado_entrevistum.update_attributes(params[:status_del_examinado_entrevistum])
        format.html { redirect_to @status_del_examinado_entrevistum, notice: 'Status del examinado entrevistum was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_del_examinado_entrevistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_del_examinado_entrevista/1
  # DELETE /status_del_examinado_entrevista/1.json
  def destroy
    @status_del_examinado_entrevistum = StatusDelExaminadoEntrevistum.find(params[:id])
    @status_del_examinado_entrevistum.destroy

    respond_to do |format|
      format.html { redirect_to status_del_examinado_entrevista_url }
      format.json { head :ok }
    end
  end
end
