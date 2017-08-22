class ReportDirectionsController < ApplicationController

  
  # GET /report_directions
  # GET /report_directions.json
  def index
    @report_directions = ReportDirection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @report_directions }
    end
  end

  # GET /report_directions/1
  # GET /report_directions/1.json
  def show
    @report_direction = ReportDirection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @report_direction }
    end
  end

  # GET /report_directions/new
  # GET /report_directions/new.json
  def new
    @report_direction = ReportDirection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @report_direction }
    end
  end

  # GET /report_directions/1/edit
  def edit
    @report_direction = ReportDirection.find(params[:id])
  end

  # POST /report_directions
  # POST /report_directions.json
  def create
    @report_direction = ReportDirection.new(params[:report_direction])

    respond_to do |format|
      if @report_direction.save
        format.html { redirect_to @report_direction, notice: 'Report direction was successfully created.' }
        format.json { render json: @report_direction, status: :created, location: @report_direction }
      else
        format.html { render action: "new" }
        format.json { render json: @report_direction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /report_directions/1
  # PUT /report_directions/1.json
  def update
    @report_direction = ReportDirection.find(params[:id])

    respond_to do |format|
      if @report_direction.update_attributes(params[:report_direction])
        format.html { redirect_to @report_direction, notice: 'Report direction was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @report_direction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_directions/1
  # DELETE /report_directions/1.json
  def destroy
    @report_direction = ReportDirection.find(params[:id])
    @report_direction.destroy

    respond_to do |format|
      format.html { redirect_to report_directions_url }
      format.json { head :ok }
    end
  end
end
