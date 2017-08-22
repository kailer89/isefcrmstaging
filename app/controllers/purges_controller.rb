class PurgesController < ApplicationController
  before_filter :authenticate_user!
  #before_filter :authenticate_user!

  # GET /purges
  # GET /purges.json
  def index
    @purges = Purge.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purges }
    end
  end

  # GET /purges/1
  # GET /purges/1.json
  def show
    @purge = Purge.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @purge }
    end
  end

  # GET /purges/new
  # GET /purges/new.json
  def new
    @purge = Purge.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purge }
    end
  end

  # GET /purges/1/edit
  def edit
    @purge = Purge.find(params[:id])
  end

  # POST /purges
  # POST /purges.json
  def create
    @purge = Purge.new(params[:purge])

    respond_to do |format|
      if @purge.save
        format.html { redirect_to @purge, notice: 'Purge was successfully created.' }
        format.json { render json: @purge, status: :created, location: @purge }
      else
        format.html { render action: "new" }
        format.json { render json: @purge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /purges/1
  # PUT /purges/1.json
  def update
    @purge = Purge.find(params[:id])

    respond_to do |format|
      if @purge.update_attributes(params[:purge])
        format.html { redirect_to @purge, notice: 'Purge was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @purge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purges/1
  # DELETE /purges/1.json
  def destroy
    @purge = Purge.find(params[:id])
    @purge.destroy

    respond_to do |format|
      format.html { redirect_to purges_url }
      format.json { head :ok }
    end
  end

  def purge_test
    logger.debug "mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm"
    logger.debug params.inspect
    logger.debug "mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm"
  end

  def purge_admitidos
    Admitido.delete_all
    redirect_to purges_path
  end

  def purge_examinados
    Examinado.delete_all
    redirect_to purges_path
  end

  def purge_inscritos
    Inscrito.delete_all
    redirect_to purges_path
  end

  def purge_prospectos
    Prospecto.delete_all
    Direccion.delete_all
    InteresBasico.delete_all
    InteresAcademico.delete_all
    MedioDeContacto.delete_all
    AccionEstrategica.delete_all
    PlanDeDescuento.delete_all

    redirect_to purges_path
  end

  def purge_sedes
    Sede.delete_all
    redirect_to purges_path
  end

  def purge_solicitantes
    Solicitante.delete_all
    Becacredito.delete_all
    redirect_to purges_path
  end

  def purge_users
    User.delete_all
    redirect_to root_path, :method => :delete 
  end

  def purge_all
    #delete admitidos
    Admitido.delete_all
    #delete examinados
    Examinado.delete_all
    Sede.delete_all
    #delete everything related to solicitante
    Solicitante.delete_all
    Becacredito.delete_all
    #delete everything related to the prospecto
    Prospecto.delete_all
    Direccion.delete_all
    InteresBasico.delete_all
    InteresAcademico.delete_all
    MedioDeContacto.delete_all
    AccionEstrategica.delete_all
    PlanDeDescuento.delete_all
    #Delete the user session also
    User.delete_all  
    redirect_to root_path, :method => :delete         
  end
   
    
end
