class FavoritosController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /favoritos
  # GET /favoritos.json
  def index
    @favoritos = Favorito.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @favoritos }
    end
  end

  # GET /favoritos/1
  # GET /favoritos/1.json
  def show
    @favorito = Favorito.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @favorito }
    end
  end

  # GET /favoritos/new
  # GET /favoritos/new.json
  def new
    @favorito = Favorito.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @favorito }
    end
  end

  # GET /favoritos/1/edit
  def edit
    @favorito = Favorito.find(params[:id])
  end

  # POST /favoritos
  # POST /favoritos.json
  def create
    @favorito = Favorito.new(params[:favorito])

    respond_to do |format|
      if @favorito.save
        format.html { redirect_to @favorito, notice: 'Favorito was successfully created.' }
        format.json { render json: @favorito, status: :created, location: @favorito }
      else
        format.html { render action: "new" }
        format.json { render json: @favorito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /favoritos/1
  # PUT /favoritos/1.json
  def update
    @favorito = Favorito.find(params[:id])

    respond_to do |format|
      if @favorito.update_attributes(params[:favorito])
        format.html { redirect_to @favorito, notice: 'Favorito was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @favorito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favoritos/1
  # DELETE /favoritos/1.json
  def destroy



rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"

  @favorito = Favorito.find(params[:id])
    @favorito.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
   

    respond_to do |format|
      format.html { redirect_to favoritos_url }
      format.json { head :ok }
    end
  end
end
