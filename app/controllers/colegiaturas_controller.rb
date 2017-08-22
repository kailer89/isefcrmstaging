class ColegiaturasController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /colegiaturas
  # GET /colegiaturas.json
  def index
    rol = Role.where(:id=>current_user.role).first
    if rol.nombre == "DN" or rol.nombre == "ACRM"
      @colegiaturas = Colegiatura.all
    else
      @colegiaturas = Colegiatura.where(:sede_id=>current_user.sede)
    end       

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @colegiaturas }
    end
  end

  # GET /colegiaturas/1
  # GET /colegiaturas/1.json
  def show
    @colegiatura = Colegiatura.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @colegiatura }
    end
  end

  # GET /colegiaturas/new
  # GET /colegiaturas/new.json
  def new
    @colegiatura = Colegiatura.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @colegiatura }
    end
  end

  # GET /colegiaturas/1/edit
  def edit
    @colegiatura = Colegiatura.find(params[:id])
  end

  # POST /colegiaturas
  # POST /colegiaturas.json
  def create
    @colegiatura = Colegiatura.new(params[:colegiatura])

    respond_to do |format|
      if @colegiatura.save
        format.html { redirect_to @colegiatura, notice: 'Colegiatura was successfully created.' }
        format.json { render json: @colegiatura, status: :created, location: @colegiatura }
      else
        format.html { render action: "new" }
        format.json { render json: @colegiatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /colegiaturas/1
  # PUT /colegiaturas/1.json
  def update
    @colegiatura = Colegiatura.find(params[:id])

    respond_to do |format|
      if @colegiatura.update_attributes(params[:colegiatura])
        format.html { redirect_to @colegiatura, notice: 'Colegiatura was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @colegiatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colegiaturas/1
  # DELETE /colegiaturas/1.json
  def destroy

rol = Role.where(:id=>current_user.role).first

        if rol.nombre == "ACRM"


    @colegiatura = Colegiatura.find(params[:id])
    @colegiatura.destroy


else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
    respond_to do |format|
      format.html { redirect_to colegiaturas_url }
      format.json { head :ok }
    end
  end
end
