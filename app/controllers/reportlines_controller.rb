class ReportlinesController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /reportlines
  # GET /reportlines.json
  def index
    @reportlines = Reportline.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reportlines }
    end
  end

  # GET /reportlines/1
  # GET /reportlines/1.json
  def show
    @reportline = Reportline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reportline }
    end
  end

  # GET /reportlines/new
  # GET /reportlines/new.json
  def new
    @reportline = Reportline.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reportline }
    end
  end

  # GET /reportlines/1/edit
  def edit
    @reportline = Reportline.find(params[:id])
  end

  # POST /reportlines
  # POST /reportlines.json
  def create
    @reportline = Reportline.new(params[:reportline])

    respond_to do |format|
      if @reportline.save
        format.html { redirect_to @reportline, notice: 'Reportline was successfully created.' }
        format.json { render json: @reportline, status: :created, location: @reportline }
      else
        format.html { render action: "new" }
        format.json { render json: @reportline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reportlines/1
  # PUT /reportlines/1.json
  def update
    @reportline = Reportline.find(params[:id])

    respond_to do |format|
      if @reportline.update_attributes(params[:reportline])
        format.html { redirect_to @reportline, notice: 'Reportline was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @reportline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reportlines/1
  # DELETE /reportlines/1.json
  def destroy
    @reportline = Reportline.find(params[:id])
    @reportline.destroy

    respond_to do |format|
      format.html { redirect_to reportlines_url }
      format.json { head :ok }
    end
  end
end
