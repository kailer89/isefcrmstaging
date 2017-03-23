class ProgramaDeInteresController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /programa_de_interes
  # GET /programa_de_interes.json
  def index
    @programa_de_interes = ProgramaDeIntere.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @programa_de_interes }
    end
  end

  # GET /programa_de_interes/1
  # GET /programa_de_interes/1.json
  def show
    @programa_de_intere = ProgramaDeIntere.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @programa_de_intere }
    end
  end

  # GET /programa_de_interes/new
  # GET /programa_de_interes/new.json
  def new
    @programa_de_intere = ProgramaDeIntere.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @programa_de_intere }
    end
  end

  # GET /programa_de_interes/1/edit
  def edit
    @programa_de_intere = ProgramaDeIntere.find(params[:id])
  end

  # POST /programa_de_interes
  # POST /programa_de_interes.json
  def create
    @programa_de_intere = ProgramaDeIntere.new(params[:programa_de_intere])

    respond_to do |format|
      if @programa_de_intere.save
        format.html { redirect_to @programa_de_intere, notice: 'Programa de intere was successfully created.' }
        format.json { render json: @programa_de_intere, status: :created, location: @programa_de_intere }
      else
        format.html { render action: "new" }
        format.json { render json: @programa_de_intere.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /programa_de_interes/1
  # PUT /programa_de_interes/1.json
  def update
    @programa_de_intere = ProgramaDeIntere.find(params[:id])

    respond_to do |format|
      if @programa_de_intere.update_attributes(params[:programa_de_intere])
        format.html { redirect_to @programa_de_intere, notice: 'Programa de intere was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @programa_de_intere.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programa_de_interes/1
  # DELETE /programa_de_interes/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
  
   
    @programa_de_intere = ProgramaDeIntere.find(params[:id])
    @programa_de_intere.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
    
  

    respond_to do |format|
      format.html { redirect_to programa_de_interes_url }
      format.json { head :ok }
    end
  end
end
