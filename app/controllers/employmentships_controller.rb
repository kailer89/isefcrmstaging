class EmploymentshipsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /employmentships
  # GET /employmentships.json
  def index
    @employmentships = Employmentship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employmentships }
    end
  end

  # GET /employmentships/1
  # GET /employmentships/1.json
  def show
    @employmentship = Employmentship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employmentship }
    end
  end

  # GET /employmentships/new
  # GET /employmentships/new.json
  def new
    @employmentship = Employmentship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employmentship }
    end
  end

  # GET /employmentships/1/edit
  def edit
    @employmentship = Employmentship.find(params[:id])
  end

  # POST /employmentships
  # POST /employmentships.json
  def create
    @employmentship = Employmentship.new(params[:employmentship])

    respond_to do |format|
      if @employmentship.save
        format.html { redirect_to @employmentship, notice: 'Employmentship was successfully created.' }
        format.json { render json: @employmentship, status: :created, location: @employmentship }
      else
        format.html { render action: "new" }
        format.json { render json: @employmentship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employmentships/1
  # PUT /employmentships/1.json
  def update
    @employmentship = Employmentship.find(params[:id])

    respond_to do |format|
      if @employmentship.update_attributes(params[:employmentship])
        format.html { redirect_to @employmentship, notice: 'Employmentship was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @employmentship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employmentships/1
  # DELETE /employmentships/1.json
  def destroy



rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"

 @employmentship = Employmentship.find(params[:id])
    @employmentship.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
   

    respond_to do |format|
      format.html { redirect_to employmentships_url }
      format.json { head :ok }
    end
  end
end
