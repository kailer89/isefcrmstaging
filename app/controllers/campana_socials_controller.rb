class CampanaSocialsController < ApplicationController


before_filter :authenticate_user!


  # GET /campana_socials
  # GET /campana_socials.json
  def index
    if params[:tipo]!=nil
      if params[:tipo] == "facebook"
        @campana_socials = CampanaSocial.where(:proveedor=>"facebook").paginate(:per_page => 15, :page => params[:page])
      elsif params[:tipo]=="twitter"
        @campana_socials = CampanaSocial.where(:proveedor=>"twitter").paginate(:per_page => 15, :page => params[:page])
      elsif params[:tipo]=="correo"
        @campana_socials = CampanaSocial.where(:proveedor=>"correo").paginate(:per_page => 15, :page => params[:page])
      else
          @campana_socials = CampanaSocial.where(:proveedor.ne=>"").paginate(:per_page => 15, :page => params[:page])
      end 
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @campana_socials }
    end
  end

  # GET /campana_socials/1
  # GET /campana_socials/1.json
  def show
    @campana_social = CampanaSocial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @campana_social }
    end
  end

  # GET /campana_socials/new
  # GET /campana_socials/new.json
  def new
    @campana_social = CampanaSocial.new
    @campana_social.proveedor = "correo"

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @campana_social }
    end
  end

  # GET /campana_socials/1/edit
  def edit
    @campana_social = CampanaSocial.find(params[:id])
  end

  # POST /campana_socials
  # POST /campana_socials.json
  def create
    @campana_social = CampanaSocial.new(params[:campana_social])

    respond_to do |format|
      if @campana_social.save
        format.html { redirect_to edit_campana_social_path(@campana_social), notice: 'Campana social was successfully created.' }
        format.json { render json: @campana_social, status: :created, location: @campana_social }
      else
        format.html { render action: "new" }
        format.json { render json: @campana_social.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /campana_socials/1
  # PUT /campana_socials/1.json
  def update
    @campana_social = CampanaSocial.find(params[:id])

    respond_to do |format|
      if @campana_social.update_attributes(params[:campana_social])
        format.html { redirect_to edit_campana_social_path(@campana_social), notice: 'Campana social was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @campana_social.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campana_socials/1
  # DELETE /campana_socials/1.json
  def destroy

rol = Role.where(:id=>current_user.role).first

        if rol.nombre == "ACRM"


    
    
    @campana_social = CampanaSocial.find(params[:id])
    @campana_social.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    respond_to do |format|
      format.html { redirect_to campana_socials_url }
      format.json { head :ok }
    end
  end
end
