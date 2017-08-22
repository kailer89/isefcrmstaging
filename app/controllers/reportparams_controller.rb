class ReportparamsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /reportparams
  # GET /reportparams.json
  def index
    @reportparams = Reportparam.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reportparams }
    end
  end

  # GET /reportparams/1
  # GET /reportparams/1.json
  def show
    @reportparam = Reportparam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reportparam }
    end
  end

  # GET /reportparams/new
  # GET /reportparams/new.json
  def new
    @reportparam = Reportparam.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reportparam }
    end
  end

  # GET /reportparams/1/edit
  def edit
    @reportparam = Reportparam.find(params[:id])
  end

  # POST /reportparams
  # POST /reportparams.json
  def create
    @reportparam = Reportparam.new(params[:reportparam])

    respond_to do |format|
      if @reportparam.save
        format.html { redirect_to @reportparam, notice: 'Reportparam was successfully created.' }
        format.json { render json: @reportparam, status: :created, location: @reportparam }
      else
        format.html { render action: "new" }
        format.json { render json: @reportparam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reportparams/1
  # PUT /reportparams/1.json
  def update
    @reportparam = Reportparam.find(params[:id])

    respond_to do |format|
      if @reportparam.update_attributes(params[:reportparam])
        format.html { redirect_to @reportparam, notice: 'Reportparam was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @reportparam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reportparams/1
  # DELETE /reportparams/1.json
  def destroy
    @reportparam = Reportparam.find(params[:id])
    @reportparam.destroy

    respond_to do |format|
      format.html { redirect_to reportparams_url }
      format.json { head :ok }
    end
  end
end
