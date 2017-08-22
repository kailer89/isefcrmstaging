class LiveReportsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /live_reports
  # GET /live_reports.json
  def index
    @live_reports = LiveReport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @live_reports }
    end
  end

  # GET /live_reports/1
  # GET /live_reports/1.json
  def show
    @live_report = LiveReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @live_report }
    end
  end

  # GET /live_reports/new
  # GET /live_reports/new.json
  def new
    @live_report = LiveReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @live_report }
    end
  end

  # GET /live_reports/1/edit
  def edit
    @live_report = LiveReport.find(params[:id])
  end

  # POST /live_reports
  # POST /live_reports.json
  def create
    @live_report = LiveReport.new(params[:live_report])

    respond_to do |format|
      if @live_report.save
        format.html { redirect_to @live_report, notice: 'Live report was successfully created.' }
        format.json { render json: @live_report, status: :created, location: @live_report }
      else
        format.html { render action: "new" }
        format.json { render json: @live_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /live_reports/1
  # PUT /live_reports/1.json
  def update
    @live_report = LiveReport.find(params[:id])

    respond_to do |format|
      if @live_report.update_attributes(params[:live_report])
        format.html { redirect_to @live_report, notice: 'Live report was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @live_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /live_reports/1
  # DELETE /live_reports/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
@live_report = LiveReport.find(params[:id])
    @live_report.destroy


else
  flash[:error] ='No tienes permiso para realizar esta accion'

end

    
    
    respond_to do |format|
      format.html { redirect_to live_reports_url }
      format.json { head :ok }
    end
  end
end
