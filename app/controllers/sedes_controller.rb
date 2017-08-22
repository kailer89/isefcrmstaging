class SedesController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /sedes
  # GET /sedes.json
  def index
    @sedes = Sede.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sedes }
    end
  end

  # GET /sedes/1
  # GET /sedes/1.json
  def show
    @sede = Sede.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sede }
    end
  end

  # GET /sedes/new
  # GET /sedes/new.json
  def new
    @sede = Sede.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sede }
    end
  end

  # GET /sedes/1/edit
  def edit
    @sede = Sede.find(params[:id])
  end

  # POST /sedes
  # POST /sedes.json
  def create
    @sede = Sede.new(params[:sede])

    respond_to do |format|
      if @sede.save
        format.html { redirect_to @sede, notice: 'Sede was successfully created.' }
        format.json { render json: @sede, status: :created, location: @sede }
      else
        format.html { render action: "new" }
        format.json { render json: @sede.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sedes/1
  # PUT /sedes/1.json
  def update
    @sede = Sede.find(params[:id])

    respond_to do |format|
      if @sede.update_attributes(params[:sede])
        format.html { redirect_to @sede, notice: 'Sede was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sede.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sedes/1
  # DELETE /sedes/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
  
  
     @sede = Sede.find(params[:id])
    @sede.destroy


else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
 
    respond_to do |format|
      format.html { redirect_to sedes_url }
      format.json { head :ok }
    end
  end
end
