class CasosController < ApplicationController
  before_filter :authenticate_user!  
  
  # GET /casos
  # GET /casos.json
  def index
    @casos = Caso.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @casos }
    end
  end

  # GET /casos/1
  # GET /casos/1.json
  def show
    @caso = Caso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @caso }
    end
  end

  # GET /casos/new
  # GET /casos/new.json
  def new
    @caso = Caso.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @caso }
    end
  end

  # GET /casos/1/edit
  def edit
    @caso = Caso.find(params[:id])
  end

  # POST /casos
  # POST /casos.json
  def create
    @caso = Caso.new(params[:caso])

    respond_to do |format|
      if @caso.save
        format.html { redirect_to @caso, notice: 'Caso was successfully created.' }
        format.json { render json: @caso, status: :created, location: @caso }
      else
        format.html { render action: "new" }
        format.json { render json: @caso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /casos/1
  # PUT /casos/1.json
  def update
    @caso = Caso.find(params[:id])

    respond_to do |format|
      if @caso.update_attributes(params[:caso])
        format.html { redirect_to @caso, notice: 'Caso was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @caso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casos/1
  # DELETE /casos/1.json
  def destroy
rol = Role.where(:id=>current_user.role).first


        if rol.nombre == "ACRM"


    @caso = Caso.find(params[:id])
    @caso.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
    respond_to do |format|
      format.html { redirect_to casos_url }
      format.json { head :ok }
    end
  end
end
