class DivisionTerritorialsController < ApplicationController
  before_filter :authenticate_user!


  # GET /division_territorials
  # GET /division_territorials.json
  def index
    rol = Role.where(:id=>current_user.role).first
    if rol.nombre == "D" or rol.nombre == "ACRM" or rol.nombre == "AL" or rol.nombre == "A"    or rol.nombre == "CP"  
      @division_territorials = DivisionTerritorial.all
    else
      @division_territorials = DivisionTerritorial.where(:sede_id=>current_user.sede)
    end       
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @division_territorials }
    end
  end

  # GET /division_territorials/1
  # GET /division_territorials/1.json
  def show
    @division_territorial = DivisionTerritorial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @division_territorial }
    end
  end

  # GET /division_territorials/new
  # GET /division_territorials/new.json
  def new
    @division_territorial = DivisionTerritorial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @division_territorial }
    end
  end

  # GET /division_territorials/1/edit
  def edit
    @division_territorial = DivisionTerritorial.find(params[:id])
  end

  # POST /division_territorials
  # POST /division_territorials.json
  def create
    @division_territorial = DivisionTerritorial.new(params[:division_territorial])

    respond_to do |format|
      if @division_territorial.save
        format.html { redirect_to @division_territorial, notice: 'Division territorial was successfully created.' }
        format.json { render json: @division_territorial, status: :created, location: @division_territorial }
      else
        format.html { render action: "new" }
        format.json { render json: @division_territorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /division_territorials/1
  # PUT /division_territorials/1.json
  def update
    @division_territorial = DivisionTerritorial.find(params[:id])

    respond_to do |format|
      if @division_territorial.update_attributes(params[:division_territorial])
        format.html { redirect_to @division_territorial, notice: 'Division territorial was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @division_territorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /division_territorials/1
  # DELETE /division_territorials/1.json
  def destroy
    @division_territorial = DivisionTerritorial.find(params[:id])
    @division_territorial.destroy

    respond_to do |format|
      format.html { redirect_to division_territorials_url }
      format.json { head :ok }
    end
  end
end
