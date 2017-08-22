class SubsedesController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /subsedes
  # GET /subsedes.json
  def index
    @subsedes = Subsede.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subsedes }
    end
  end

  # GET /subsedes/1
  # GET /subsedes/1.json
  def show
    @subsede = Subsede.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subsede }
    end
  end

  # GET /subsedes/new
  # GET /subsedes/new.json
  def new
    @subsede = Subsede.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subsede }
    end
  end

  # GET /subsedes/1/edit
  def edit
    @subsede = Subsede.find(params[:id])
  end

  # POST /subsedes
  # POST /subsedes.json
  def create
    @subsede = Subsede.new(params[:subsede])

    respond_to do |format|
      if @subsede.save
        format.html { redirect_to @subsede, notice: 'Subsede was successfully created.' }
        format.json { render json: @subsede, status: :created, location: @subsede }
      else
        format.html { render action: "new" }
        format.json { render json: @subsede.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subsedes/1
  # PUT /subsedes/1.json
  def update
    @subsede = Subsede.find(params[:id])

    respond_to do |format|
      if @subsede.update_attributes(params[:subsede])
        format.html { redirect_to @subsede, notice: 'Subsede was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @subsede.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subsedes/1
  # DELETE /subsedes/1.json
  def destroy

rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"

   @subsede = Subsede.find(params[:id])
    @subsede.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end

    
 

    respond_to do |format|
      format.html { redirect_to subsedes_url }
      format.json { head :ok }
    end
  end
end
