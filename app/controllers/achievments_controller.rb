class AchievmentsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /achievments
  # GET /achievments.json
  def index
    rol = Role.where(:id=>current_user.role).first
    if rol.nombre == "DN" or rol.nombre == "ACRM"
      @achievments = Achievment.all
    else
      @achievments = Achievment.where(:sede_id=>current_user.sede)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @achievments }
    end
  end

  # GET /achievments/1
  # GET /achievments/1.json
  def show
    @achievment = Achievment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @achievment }
    end
  end

  def printview
    @achievment = Achievment.find(params[:id])
    render :layout => false
  end

  # GET /achievments/new
  # GET /achievments/new.json
  def new
    @achievment = Achievment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @achievment }
    end
  end

  # GET /achievments/1/edit
  def edit
    @achievment = Achievment.find(params[:id])
  end

  # POST /achievments
  # POST /achievments.json
  def create
    @achievment = Achievment.new(params[:achievment])

    respond_to do |format|
      if @achievment.save
        format.html { redirect_to @achievment, notice: 'Achievment was successfully created.' }
        format.json { render json: @achievment, status: :created, location: @achievment }
      else
        format.html { render action: "new" }
        format.json { render json: @achievment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /achievments/1
  # PUT /achievments/1.json
  def update
    @achievment = Achievment.find(params[:id])

    respond_to do |format|
      if @achievment.update_attributes(params[:achievment])
        format.html { redirect_to @achievment, notice: 'Achievment was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @achievment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /achievments/1
  # DELETE /achievments/1.json
  def destroy
      rol = Role.where(:id=>current_user.role).first

        if rol.nombre == "ACRM"


    @achievment = Achievment.find(params[:id])
    @achievment.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end

    respond_to do |format|
      format.html { redirect_to achievments_url }
      format.json { head :ok }
    end
  end
end
