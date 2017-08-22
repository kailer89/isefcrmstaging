class MetasGlobalesController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /metas_globales
  # GET /metas_globales.json
  def index
    rol = Role.where(:id=>current_user.role).first
    if rol.nombre == "D" or rol.nombre == "ACRM" or rol.nombre == "AL" or rol.nombre == "A"    or rol.nombre == "CP"  
      @metas_globales = MetasGlobale.all
    else
      @metas_globales = MetasGlobale.where(:sede_id=>current_user.sede)
    end       
                

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @metas_globales }
    end
  end

  # GET /metas_globales/1
  # GET /metas_globales/1.json
  def show
    @metas_globale = MetasGlobale.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @metas_globale }
    end
  end

  # GET /metas_globales/new
  # GET /metas_globales/new.json
  def new
    @metas_globale = MetasGlobale.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @metas_globale }
    end
  end

  # GET /metas_globales/1/edit
  def edit
    @metas_globale = MetasGlobale.find(params[:id])
  end

  # POST /metas_globales
  # POST /metas_globales.json
  def create
    @metas_globale = MetasGlobale.new(params[:metas_globale])

    respond_to do |format|
      if @metas_globale.save
        format.html { redirect_to @metas_globale, notice: 'Metas globale was successfully created.' }
        format.json { render json: @metas_globale, status: :created, location: @metas_globale }
      else
        format.html { render action: "new" }
        format.json { render json: @metas_globale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /metas_globales/1
  # PUT /metas_globales/1.json
  def update
    @metas_globale = MetasGlobale.find(params[:id])

    respond_to do |format|
      if @metas_globale.update_attributes(params[:metas_globale])
        format.html { redirect_to @metas_globale, notice: 'Metas globale was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @metas_globale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metas_globales/1
  # DELETE /metas_globales/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"

 @metas_globale = MetasGlobale.find(params[:id])
    @metas_globale.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
    

    respond_to do |format|
      format.html { redirect_to metas_globales_url }
      format.json { head :ok }
    end
  end
end
