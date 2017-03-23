class FinalidadCultivosController < ApplicationController
  before_filter :authenticate_user!
  helper_method :sort_column, :sort_direction  
  
  # GET /finalidad_cultivos
  # GET /finalidad_cultivos.json
  def index
    @finalidad_cultivos = FinalidadCultivo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @finalidad_cultivos }
    end
  end

  # GET /finalidad_cultivos/1
  # GET /finalidad_cultivos/1.json
  def show
    @finalidad_cultivo = FinalidadCultivo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @finalidad_cultivo }
    end
  end

  # GET /finalidad_cultivos/new
  # GET /finalidad_cultivos/new.json
  def new
    @finalidad_cultivo = FinalidadCultivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @finalidad_cultivo }
    end
  end

  # GET /finalidad_cultivos/1/edit
  def edit
    @finalidad_cultivo = FinalidadCultivo.find(params[:id])
  end

  # POST /finalidad_cultivos
  # POST /finalidad_cultivos.json
  def create
    @finalidad_cultivo = FinalidadCultivo.new(params[:finalidad_cultivo])

    respond_to do |format|
      if @finalidad_cultivo.save
        format.html { redirect_to @finalidad_cultivo, notice: 'Finalidad cultivo was successfully created.' }
        format.json { render json: @finalidad_cultivo, status: :created, location: @finalidad_cultivo }
      else
        format.html { render action: "new" }
        format.json { render json: @finalidad_cultivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /finalidad_cultivos/1
  # PUT /finalidad_cultivos/1.json
  def update
    @finalidad_cultivo = FinalidadCultivo.find(params[:id])

    respond_to do |format|
      if @finalidad_cultivo.update_attributes(params[:finalidad_cultivo])
        format.html { redirect_to @finalidad_cultivo, notice: 'Finalidad cultivo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @finalidad_cultivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finalidad_cultivos/1
  # DELETE /finalidad_cultivos/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"

     @finalidad_cultivo = FinalidadCultivo.find(params[:id])
    @finalidad_cultivo.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end



    respond_to do |format|
      format.html { redirect_to finalidad_cultivos_url }
      format.json { head :ok }
    end
  end
  def sort_column
    if params[:sort] !=nil
      params[:sort] 
    else
      "id"
    end
  end
  
  def sort_direction
    if params[:direction] != nil
        params[:direction]
    else
      "desc"
    end
  end  
end
