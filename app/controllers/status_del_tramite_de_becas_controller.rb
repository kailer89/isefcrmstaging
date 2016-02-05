class StatusDelTramiteDeBecasController < ApplicationController
  before_filter :authenticate_user!
  # GET /status_del_tramite_de_becas
  # GET /status_del_tramite_de_becas.json
  def index
    @status_del_tramite_de_becas = StatusDelTramiteDeBeca.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_del_tramite_de_becas }
    end
  end

  # GET /status_del_tramite_de_becas/1
  # GET /status_del_tramite_de_becas/1.json
  def show
    @status_del_tramite_de_beca = StatusDelTramiteDeBeca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_del_tramite_de_beca }
    end
  end

  # GET /status_del_tramite_de_becas/new
  # GET /status_del_tramite_de_becas/new.json
  def new
    @status_del_tramite_de_beca = StatusDelTramiteDeBeca.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_del_tramite_de_beca }
    end
  end

  # GET /status_del_tramite_de_becas/1/edit
  def edit
    @status_del_tramite_de_beca = StatusDelTramiteDeBeca.find(params[:id])
  end

  # POST /status_del_tramite_de_becas
  # POST /status_del_tramite_de_becas.json
  def create
    @status_del_tramite_de_beca = StatusDelTramiteDeBeca.new(params[:status_del_tramite_de_beca])

    respond_to do |format|
      if @status_del_tramite_de_beca.save
        format.html { redirect_to @status_del_tramite_de_beca, notice: 'Status del tramite de beca was successfully created.' }
        format.json { render json: @status_del_tramite_de_beca, status: :created, location: @status_del_tramite_de_beca }
      else
        format.html { render action: "new" }
        format.json { render json: @status_del_tramite_de_beca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_del_tramite_de_becas/1
  # PUT /status_del_tramite_de_becas/1.json
  def update
    @status_del_tramite_de_beca = StatusDelTramiteDeBeca.find(params[:id])

    respond_to do |format|
      if @status_del_tramite_de_beca.update_attributes(params[:status_del_tramite_de_beca])
        format.html { redirect_to @status_del_tramite_de_beca, notice: 'Status del tramite de beca was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_del_tramite_de_beca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_del_tramite_de_becas/1
  # DELETE /status_del_tramite_de_becas/1.json
  def destroy
    @status_del_tramite_de_beca = StatusDelTramiteDeBeca.find(params[:id])
    @status_del_tramite_de_beca.destroy

    respond_to do |format|
      format.html { redirect_to status_del_tramite_de_becas_url }
      format.json { head :ok }
    end
  end
end
