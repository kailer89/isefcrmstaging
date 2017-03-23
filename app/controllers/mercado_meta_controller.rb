class MercadoMetaController < ApplicationController
  before_filter :authenticate_user!
  helper_method :sort_column, :sort_direction 
   
  # GET /mercado_meta
  # GET /mercado_meta.json
  def index
    @mercado_meta = MercadoMetum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mercado_meta }
    end
  end

  # GET /mercado_meta/1
  # GET /mercado_meta/1.json
  def show
    @mercado_metum = MercadoMetum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mercado_metum }
    end
  end

  # GET /mercado_meta/new
  # GET /mercado_meta/new.json
  def new
    @mercado_metum = MercadoMetum.new
    estrategia_promocional=@mercado_metum.estrategia_promocionals.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mercado_metum }
    end
  end

  # GET /mercado_meta/1/edit
  def edit
    @mercado_metum = MercadoMetum.find(params[:id])

  end

  # POST /mercado_meta
  # POST /mercado_meta.json
  def create
    @mercado_metum = MercadoMetum.new(params[:mercado_metum])

    respond_to do |format|
      if @mercado_metum.save
        format.html { redirect_to @mercado_metum, notice: 'Mercado metum was successfully created.' }
        format.json { render json: @mercado_metum, status: :created, location: @mercado_metum }
      else
        format.html { render action: "new" }
        format.json { render json: @mercado_metum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mercado_meta/1
  # PUT /mercado_meta/1.json
  def update
    @mercado_metum = MercadoMetum.find(params[:id])

    respond_to do |format|
      if @mercado_metum.update_attributes(params[:mercado_metum])
        format.html { redirect_to @mercado_metum, notice: 'Mercado metum was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @mercado_metum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mercado_meta/1
  # DELETE /mercado_meta/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"

    
    @mercado_metum = MercadoMetum.find(params[:id])
    @mercado_metum.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    

    respond_to do |format|
      format.html { redirect_to mercado_meta_url }
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
