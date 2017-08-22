class NacionalidadsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /nacionalidads
  # GET /nacionalidads.json
  def index
    @nacionalidads = Nacionalidad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nacionalidads }
    end
  end

  # GET /nacionalidads/1
  # GET /nacionalidads/1.json
  def show
    @nacionalidad = Nacionalidad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nacionalidad }
    end
  end

  # GET /nacionalidads/new
  # GET /nacionalidads/new.json
  def new
    @nacionalidad = Nacionalidad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nacionalidad }
    end
  end

  # GET /nacionalidads/1/edit
  def edit
    @nacionalidad = Nacionalidad.find(params[:id])
  end

  # POST /nacionalidads
  # POST /nacionalidads.json
  def create
    @nacionalidad = Nacionalidad.new(params[:nacionalidad])

    respond_to do |format|
      if @nacionalidad.save
        format.html { redirect_to @nacionalidad, notice: 'Nacionalidad was successfully created.' }
        format.json { render json: @nacionalidad, status: :created, location: @nacionalidad }
      else
        format.html { render action: "new" }
        format.json { render json: @nacionalidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nacionalidads/1
  # PUT /nacionalidads/1.json
  def update
    @nacionalidad = Nacionalidad.find(params[:id])

    respond_to do |format|
      if @nacionalidad.update_attributes(params[:nacionalidad])
        format.html { redirect_to @nacionalidad, notice: 'Nacionalidad was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @nacionalidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nacionalidads/1
  # DELETE /nacionalidads/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
  
    
@nacionalidad = Nacionalidad.find(params[:id])
    @nacionalidad.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end

    respond_to do |format|
      format.html { redirect_to nacionalidads_url }
      format.json { head :ok }
    end
  end
end
