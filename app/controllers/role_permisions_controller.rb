class RolePermisionsController < ApplicationController
  
  # GET /role_permisions
  # GET /role_permisions.json
  def index
    @role_permisions = RolePermision.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @role_permisions }
    end
  end

  # GET /role_permisions/1
  # GET /role_permisions/1.json
  def show
    @role_permision = RolePermision.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @role_permision }
    end
  end

  # GET /role_permisions/new
  # GET /role_permisions/new.json
  def new
    @role_permision = RolePermision.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @role_permision }
    end
  end

  # GET /role_permisions/1/edit
  def edit
    @role_permision = RolePermision.find(params[:id])
  end

  # POST /role_permisions
  # POST /role_permisions.json
  def create
    @role_permision = RolePermision.new(params[:role_permision])

    respond_to do |format|
      if @role_permision.save
        format.html { redirect_to @role_permision, notice: 'Role permision was successfully created.' }
        format.json { render json: @role_permision, status: :created, location: @role_permision }
      else
        format.html { render action: "new" }
        format.json { render json: @role_permision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /role_permisions/1
  # PUT /role_permisions/1.json
  def update
    @role_permision = RolePermision.find(params[:id])

    respond_to do |format|
      if @role_permision.update_attributes(params[:role_permision])
        format.html { redirect_to @role_permision, notice: 'Role permision was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @role_permision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /role_permisions/1
  # DELETE /role_permisions/1.json
  def destroy



rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
 @role_permision = RolePermision.find(params[:id])
    @role_permision.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
   

    respond_to do |format|
      format.html { redirect_to role_permisions_url }
      format.json { head :ok }
    end
  end
end
