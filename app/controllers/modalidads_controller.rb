class ModalidadsController < ApplicationController
  before_filter :authenticate_user!
  # GET /modalidads
  # GET /modalidads.json
  def index
    @modalidads = Modalidad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @modalidads }
    end
  end

  # GET /modalidads/1
  # GET /modalidads/1.json
  def show
    @modalidad = Modalidad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @modalidad }
    end
  end

  # GET /modalidads/new
  # GET /modalidads/new.json
  def new
    @modalidad = Modalidad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @modalidad }
    end
  end

  # GET /modalidads/1/edit
  def edit
    @modalidad = Modalidad.find(params[:id])
  end

  # POST /modalidads
  # POST /modalidads.json
  def create
    @modalidad = Modalidad.new(params[:modalidad])

    respond_to do |format|
      if @modalidad.save
        format.html { redirect_to @modalidad, notice: 'Modalidad was successfully created.' }
        format.json { render json: @modalidad, status: :created, location: @modalidad }
      else
        format.html { render action: "new" }
        format.json { render json: @modalidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /modalidads/1
  # PUT /modalidads/1.json
  def update
    @modalidad = Modalidad.find(params[:id])

    respond_to do |format|
      if @modalidad.update_attributes(params[:modalidad])
        format.html { redirect_to @modalidad, notice: 'Modalidad was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @modalidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modalidads/1
  # DELETE /modalidads/1.json
  def destroy
    @modalidad = Modalidad.find(params[:id])
    @modalidad.destroy

    respond_to do |format|
      format.html { redirect_to modalidads_url }
      format.json { head :ok }
    end
  end
end
