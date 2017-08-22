class EquipoPromocionsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /equipo_promocions
  # GET /equipo_promocions.json
  def index
    @equipo_promocions = EquipoPromocion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipo_promocions }
    end
  end

  # GET /equipo_promocions/1
  # GET /equipo_promocions/1.json
  def show
    @equipo_promocion = EquipoPromocion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipo_promocion }
    end
  end

  # GET /equipo_promocions/new
  # GET /equipo_promocions/new.json
  def new
    @equipo_promocion = EquipoPromocion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipo_promocion }
    end
  end

  # GET /equipo_promocions/1/edit
  def edit
    @equipo_promocion = EquipoPromocion.find(params[:id])
  end

  # POST /equipo_promocions
  # POST /equipo_promocions.json
  def create
    @equipo_promocion = EquipoPromocion.new(params[:equipo_promocion])

    respond_to do |format|
      if @equipo_promocion.save
        format.html { redirect_to @equipo_promocion, notice: 'Equipo promocion was successfully created.' }
        format.json { render json: @equipo_promocion, status: :created, location: @equipo_promocion }
      else
        format.html { render action: "new" }
        format.json { render json: @equipo_promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equipo_promocions/1
  # PUT /equipo_promocions/1.json
  def update
    @equipo_promocion = EquipoPromocion.find(params[:id])

    respond_to do |format|
      if @equipo_promocion.update_attributes(params[:equipo_promocion])
        format.html { redirect_to @equipo_promocion, notice: 'Equipo promocion was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @equipo_promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipo_promocions/1
  # DELETE /equipo_promocions/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
  
    @equipo_promocion = EquipoPromocion.find(params[:id])
    @equipo_promocion.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
  

    respond_to do |format|
      format.html { redirect_to equipo_promocions_url }
      format.json { head :ok }
    end
  end
end
