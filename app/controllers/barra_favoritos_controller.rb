class BarraFavoritosController < ApplicationController
    before_filter :authenticate_user!
    
  # GET /barra_favoritos
  # GET /barra_favoritos.json
  def index
    @barra_favoritos = BarraFavorito.where(:user_id=>current_user)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @barra_favoritos }
    end
  end

  # GET /barra_favoritos/1
  # GET /barra_favoritos/1.json
  def show
    @barra_favorito = BarraFavorito.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @barra_favorito }
    end
  end

  # GET /barra_favoritos/new
  # GET /barra_favoritos/new.json
  def new
    @barra_favorito = BarraFavorito.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @barra_favorito }
    end
  end

  # GET /barra_favoritos/1/edit
  def edit
    @barra_favorito = BarraFavorito.find(params[:id])
  end

  # POST /barra_favoritos
  # POST /barra_favoritos.json
  def create
    @barra_favorito = BarraFavorito.new(params[:barra_favorito])

    respond_to do |format|
      if @barra_favorito.save
        format.html { redirect_to @barra_favorito, notice: 'Barra favorito was successfully created.' }
        format.json { render json: @barra_favorito, status: :created, location: @barra_favorito }
      else
        format.html { render action: "new" }
        format.json { render json: @barra_favorito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /barra_favoritos/1
  # PUT /barra_favoritos/1.json
  def update
    @barra_favorito = BarraFavorito.find(params[:id])

    respond_to do |format|
      if @barra_favorito.update_attributes(params[:barra_favorito])
        format.html { redirect_to @barra_favorito, notice: 'Barra favorito was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @barra_favorito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barra_favoritos/1
  # DELETE /barra_favoritos/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first

        if rol.nombre == "ACRM"


    @barra_favorito = BarraFavorito.find(params[:id])
    @barra_favorito.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    

    respond_to do |format|
      format.html { redirect_to barra_favoritos_url }
      format.json { head :ok }
    end
  end
end
