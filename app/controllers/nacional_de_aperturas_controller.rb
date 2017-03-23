class NacionalDeAperturasController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /nacional_de_aperturas
  # GET /nacional_de_aperturas.json
  def index
    rol = Role.where(:id=>current_user.role).first
    if rol.nombre == "D" or rol.nombre == "ACRM" or rol.nombre == "AL" or rol.nombre == "A"    or rol.nombre == "CP"  
      @nacional_de_aperturas = NacionalDeApertura.all
    else
      @nacional_de_aperturas = NacionalDeApertura.where(:sede_id=>current_user.sede)
    end       
        

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nacional_de_aperturas }
    end
  end

  # GET /nacional_de_aperturas/1
  # GET /nacional_de_aperturas/1.json
  def show
    @nacional_de_apertura = NacionalDeApertura.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nacional_de_apertura }
    end
  end

  # GET /nacional_de_aperturas/new
  # GET /nacional_de_aperturas/new.json
  def new
    @nacional_de_apertura = NacionalDeApertura.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nacional_de_apertura }
    end
  end

  # GET /nacional_de_aperturas/1/edit
  def edit
    @nacional_de_apertura = NacionalDeApertura.find(params[:id])
  end

  # POST /nacional_de_aperturas
  # POST /nacional_de_aperturas.json
  def create
    @nacional_de_apertura = NacionalDeApertura.new(params[:nacional_de_apertura])

    respond_to do |format|
      if @nacional_de_apertura.save
        format.html { redirect_to @nacional_de_apertura, notice: 'Nacional de apertura was successfully created.' }
        format.json { render json: @nacional_de_apertura, status: :created, location: @nacional_de_apertura }
      else
        format.html { render action: "new" }
        format.json { render json: @nacional_de_apertura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nacional_de_aperturas/1
  # PUT /nacional_de_aperturas/1.json
  def update
    @nacional_de_apertura = NacionalDeApertura.find(params[:id])

    respond_to do |format|
      if @nacional_de_apertura.update_attributes(params[:nacional_de_apertura])
        format.html { redirect_to @nacional_de_apertura, notice: 'Nacional de apertura was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @nacional_de_apertura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nacional_de_aperturas/1
  # DELETE /nacional_de_aperturas/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
  
    
    @nacional_de_apertura = NacionalDeApertura.find(params[:id])
    @nacional_de_apertura.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end

    

    respond_to do |format|
      format.html { redirect_to nacional_de_aperturas_url }
      format.json { head :ok }
    end
  end
end
