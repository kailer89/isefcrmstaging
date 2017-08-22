class PeriodoParaIngresarsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /periodo_para_ingresars
  # GET /periodo_para_ingresars.json
  def index
    @periodo_para_ingresars = PeriodoParaIngresar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @periodo_para_ingresars }
    end
  end

  # GET /periodo_para_ingresars/1
  # GET /periodo_para_ingresars/1.json
  def show
    @periodo_para_ingresar = PeriodoParaIngresar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @periodo_para_ingresar }
    end
  end

  # GET /periodo_para_ingresars/new
  # GET /periodo_para_ingresars/new.json
  def new
    @periodo_para_ingresar = PeriodoParaIngresar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @periodo_para_ingresar }
    end
  end

  # GET /periodo_para_ingresars/1/edit
  def edit
    @periodo_para_ingresar = PeriodoParaIngresar.find(params[:id])
  end

  # POST /periodo_para_ingresars
  # POST /periodo_para_ingresars.json
  def create
    @periodo_para_ingresar = PeriodoParaIngresar.new(params[:periodo_para_ingresar])

    respond_to do |format|
      if @periodo_para_ingresar.save
        format.html { redirect_to @periodo_para_ingresar, notice: 'Periodo para ingresar was successfully created.' }
        format.json { render json: @periodo_para_ingresar, status: :created, location: @periodo_para_ingresar }
      else
        format.html { render action: "new" }
        format.json { render json: @periodo_para_ingresar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /periodo_para_ingresars/1
  # PUT /periodo_para_ingresars/1.json
  def update
    @periodo_para_ingresar = PeriodoParaIngresar.find(params[:id])

    respond_to do |format|
      if @periodo_para_ingresar.update_attributes(params[:periodo_para_ingresar])
        format.html { redirect_to @periodo_para_ingresar, notice: 'Periodo para ingresar was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @periodo_para_ingresar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /periodo_para_ingresars/1
  # DELETE /periodo_para_ingresars/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
  

    
    @periodo_para_ingresar = PeriodoParaIngresar.find(params[:id])
    @periodo_para_ingresar.destroy


else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
    respond_to do |format|
      format.html { redirect_to periodo_para_ingresars_url }
      format.json { head :ok }
    end
  end
end
