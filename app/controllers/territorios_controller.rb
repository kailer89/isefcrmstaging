class TerritoriosController < ApplicationController
  before_filter :authenticate_user!
  # GET /territorios
  # GET /territorios.json
  def index
    @territorios = Territorio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @territorios }
    end
  end

  # GET /territorios/1
  # GET /territorios/1.json
  def show
    @territorio = Territorio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @territorio }
    end
  end

  # GET /territorios/new
  # GET /territorios/new.json
  def new
    @territorio = Territorio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @territorio }
    end
  end

  # GET /territorios/1/edit
  def edit
    @territorio = Territorio.find(params[:id])
  end

  # POST /territorios
  # POST /territorios.json
  def create
    @territorio = Territorio.new(params[:territorio])

    respond_to do |format|
      if @territorio.save
        format.html { redirect_to @territorio, notice: 'Territorio was successfully created.' }
        format.json { render json: @territorio, status: :created, location: @territorio }
      else
        format.html { render action: "new" }
        format.json { render json: @territorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /territorios/1
  # PUT /territorios/1.json
  def update
    @territorio = Territorio.find(params[:id])

    respond_to do |format|
      if @territorio.update_attributes(params[:territorio])
        format.html { redirect_to @territorio, notice: 'Territorio was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @territorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /territorios/1
  # DELETE /territorios/1.json
  def destroy
    @territorio = Territorio.find(params[:id])
    @territorio.destroy

    respond_to do |format|
      format.html { redirect_to territorios_url }
      format.json { head :ok }
    end
  end
end
