class ReportsortbiesController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /reportsortbies
  # GET /reportsortbies.json
  def index
    @reportsortbies = Reportsortby.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reportsortbies }
    end
  end

  # GET /reportsortbies/1
  # GET /reportsortbies/1.json
  def show
    @reportsortby = Reportsortby.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reportsortby }
    end
  end

  # GET /reportsortbies/new
  # GET /reportsortbies/new.json
  def new
    @reportsortby = Reportsortby.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reportsortby }
    end
  end

  # GET /reportsortbies/1/edit
  def edit
    @reportsortby = Reportsortby.find(params[:id])
  end

  # POST /reportsortbies
  # POST /reportsortbies.json
  def create
    @reportsortby = Reportsortby.new(params[:reportsortby])

    respond_to do |format|
      if @reportsortby.save
        format.html { redirect_to @reportsortby, notice: 'Reportsortby was successfully created.' }
        format.json { render json: @reportsortby, status: :created, location: @reportsortby }
      else
        format.html { render action: "new" }
        format.json { render json: @reportsortby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reportsortbies/1
  # PUT /reportsortbies/1.json
  def update
    @reportsortby = Reportsortby.find(params[:id])

    respond_to do |format|
      if @reportsortby.update_attributes(params[:reportsortby])
        format.html { redirect_to @reportsortby, notice: 'Reportsortby was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @reportsortby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reportsortbies/1
  # DELETE /reportsortbies/1.json
  def destroy
    @reportsortby = Reportsortby.find(params[:id])
    @reportsortby.destroy

    respond_to do |format|
      format.html { redirect_to reportsortbies_url }
      format.json { head :ok }
    end
  end
end
