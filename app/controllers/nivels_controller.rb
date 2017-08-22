class NivelsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /nivels
  # GET /nivels.json
  def index
    @nivels = Nivel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nivels }
    end
  end

  # GET /nivels/1
  # GET /nivels/1.json
  def show
    @nivel = Nivel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nivel }
    end
  end

  # GET /nivels/new
  # GET /nivels/new.json
  def new
    @nivel = Nivel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nivel }
    end
  end

  # GET /nivels/1/edit
  def edit
    @nivel = Nivel.find(params[:id])
  end

  # POST /nivels
  # POST /nivels.json
  def create
    @nivel = Nivel.new(params[:nivel])

    respond_to do |format|
      if @nivel.save
        format.html { redirect_to @nivel, notice: 'Nivel was successfully created.' }
        format.json { render json: @nivel, status: :created, location: @nivel }
      else
        format.html { render action: "new" }
        format.json { render json: @nivel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nivels/1
  # PUT /nivels/1.json
  def update
    @nivel = Nivel.find(params[:id])

    respond_to do |format|
      if @nivel.update_attributes(params[:nivel])
        format.html { redirect_to @nivel, notice: 'Nivel was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @nivel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nivels/1
  # DELETE /nivels/1.json
  def destroy

rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
  
    
    @nivel = Nivel.find(params[:id])
    @nivel.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end


    respond_to do |format|
      format.html { redirect_to nivels_url }
      format.json { head :ok }
    end
  end
end
