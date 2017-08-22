class EquipoDeAltoRendimientosController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /equipo_de_alto_rendimientos
  # GET /equipo_de_alto_rendimientos.json
  def index
    @equipo_de_alto_rendimientos = EquipoDeAltoRendimiento.all
            

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipo_de_alto_rendimientos }
    end
  end

  # GET /equipo_de_alto_rendimientos/1
  # GET /equipo_de_alto_rendimientos/1.json
  def show
    @equipo_de_alto_rendimiento = EquipoDeAltoRendimiento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipo_de_alto_rendimiento }
    end
  end

  # GET /equipo_de_alto_rendimientos/new
  # GET /equipo_de_alto_rendimientos/new.json
  def new
    @equipo_de_alto_rendimiento = EquipoDeAltoRendimiento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipo_de_alto_rendimiento }
    end
  end

  # GET /equipo_de_alto_rendimientos/1/edit
  def edit
    @equipo_de_alto_rendimiento = EquipoDeAltoRendimiento.find(params[:id])
  end

  # POST /equipo_de_alto_rendimientos
  # POST /equipo_de_alto_rendimientos.json
  def create
    @equipo_de_alto_rendimiento = EquipoDeAltoRendimiento.new(params[:equipo_de_alto_rendimiento])

    respond_to do |format|
      if @equipo_de_alto_rendimiento.save
        format.html { redirect_to @equipo_de_alto_rendimiento, notice: 'Equipo de alto rendimiento was successfully created.' }
        format.json { render json: @equipo_de_alto_rendimiento, status: :created, location: @equipo_de_alto_rendimiento }
      else
        format.html { render action: "new" }
        format.json { render json: @equipo_de_alto_rendimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equipo_de_alto_rendimientos/1
  # PUT /equipo_de_alto_rendimientos/1.json
  def update
    @equipo_de_alto_rendimiento = EquipoDeAltoRendimiento.find(params[:id])

    respond_to do |format|
      if @equipo_de_alto_rendimiento.update_attributes(params[:equipo_de_alto_rendimiento])
        format.html { redirect_to @equipo_de_alto_rendimiento, notice: 'Equipo de alto rendimiento was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @equipo_de_alto_rendimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipo_de_alto_rendimientos/1
  # DELETE /equipo_de_alto_rendimientos/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"

    @equipo_de_alto_rendimiento = EquipoDeAltoRendimiento.find(params[:id])
    @equipo_de_alto_rendimiento.destroy


else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
   
    
    respond_to do |format|
      format.html { redirect_to equipo_de_alto_rendimientos_url }
      format.json { head :ok }
    end
  end
end
