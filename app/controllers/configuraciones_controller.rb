class ConfiguracionesController < ApplicationController
  before_filter :authenticate_user!
  # GET /configuraciones
  # GET /configuraciones.json
  def index
    @configuraciones = Configuracione.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @configuraciones }
    end
  end

  # GET /configuraciones/1
  # GET /configuraciones/1.json
  def show
    @configuracione = Configuracione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @configuracione }
    end
  end

  # GET /configuraciones/new
  # GET /configuraciones/new.json
  def new
    @configuracione = Configuracione.new
    @configuracione.user_id=current_user.id

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @configuracione }
    end
  end

  # GET /configuraciones/1/edit
  def edit
    @configuracione = Configuracione.find(params[:id])
  end

  # POST /configuraciones
  # POST /configuraciones.json
  def create
    @configuracione = Configuracione.new(params[:configuracione])

    respond_to do |format|
      if @configuracione.save
        format.html { redirect_to :back, notice: 'Configuracione was successfully created.' }
        format.json { render json: @configuracione, status: :created, location: @configuracione }
      else
        format.html { render action: "new" }
        format.json { render json: @configuracione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /configuraciones/1
  # PUT /configuraciones/1.json
  def update
    @configuracione = Configuracione.find(params[:id])

    respond_to do |format|
      if @configuracione.update_attributes(params[:configuracione])
        format.html { redirect_to :back, notice: 'Configuracione was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @configuracione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /configuraciones/1
  # DELETE /configuraciones/1.json
  def destroy
    @configuracione = Configuracione.find(params[:id])
    @configuracione.destroy

    respond_to do |format|
      format.html { redirect_to configuraciones_url }
      format.json { head :ok }
    end
  end
end
