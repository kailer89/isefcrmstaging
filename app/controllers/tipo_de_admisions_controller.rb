class TipoDeAdmisionsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /tipo_de_admisions
  # GET /tipo_de_admisions.json
  def index
    @tipo_de_admisions = TipoDeAdmision.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_de_admisions }
    end
  end

  # GET /tipo_de_admisions/1
  # GET /tipo_de_admisions/1.json
  def show
    @tipo_de_admision = TipoDeAdmision.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_de_admision }
    end
  end

  # GET /tipo_de_admisions/new
  # GET /tipo_de_admisions/new.json
  def new
    @tipo_de_admision = TipoDeAdmision.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_de_admision }
    end
  end

  # GET /tipo_de_admisions/1/edit
  def edit
    @tipo_de_admision = TipoDeAdmision.find(params[:id])
  end

  # POST /tipo_de_admisions
  # POST /tipo_de_admisions.json
  def create
    @tipo_de_admision = TipoDeAdmision.new(params[:tipo_de_admision])

    respond_to do |format|
      if @tipo_de_admision.save
        format.html { redirect_to @tipo_de_admision, notice: 'Tipo de admision was successfully created.' }
        format.json { render json: @tipo_de_admision, status: :created, location: @tipo_de_admision }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_de_admision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_de_admisions/1
  # PUT /tipo_de_admisions/1.json
  def update
    @tipo_de_admision = TipoDeAdmision.find(params[:id])

    respond_to do |format|
      if @tipo_de_admision.update_attributes(params[:tipo_de_admision])
        format.html { redirect_to @tipo_de_admision, notice: 'Tipo de admision was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_de_admision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_admisions/1
  # DELETE /tipo_de_admisions/1.json
  def destroy

rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"




    
    @tipo_de_admision = TipoDeAdmision.find(params[:id])
    @tipo_de_admision.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end


    respond_to do |format|
      format.html { redirect_to tipo_de_admisions_url }
      format.json { head :ok }
    end
  end
end
