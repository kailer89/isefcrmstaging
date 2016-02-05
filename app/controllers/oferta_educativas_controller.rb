class OfertaEducativasController < ApplicationController
  before_filter :authenticate_user!
  # GET /oferta_educativas
  # GET /oferta_educativas.json
  def index

    rol = Role.where(:id=>current_user.role).first
    if rol.nombre == "D" or rol.nombre == "ACRM" or rol.nombre == "AL" or rol.nombre == "A"    or rol.nombre == "CP"  
      @oferta_educativas = OfertaEducativa.all
    else
      @oferta_educativas = OfertaEducativa.where(:sede_id=>current_user.sede)
    end    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @oferta_educativas }
    end
  end

  # GET /oferta_educativas/1
  # GET /oferta_educativas/1.json
  def show
    @oferta_educativa = OfertaEducativa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @oferta_educativa }
    end
  end

  # GET /oferta_educativas/new
  # GET /oferta_educativas/new.json
  def new
    @oferta_educativa = OfertaEducativa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @oferta_educativa }
    end
  end

  # GET /oferta_educativas/1/edit
  def edit
    @oferta_educativa = OfertaEducativa.find(params[:id])
  end

  # POST /oferta_educativas
  # POST /oferta_educativas.json
  def create
    @oferta_educativa = OfertaEducativa.new(params[:oferta_educativa])

    respond_to do |format|
      if @oferta_educativa.save
        format.html { redirect_to @oferta_educativa, notice: 'Oferta educativa was successfully created.' }
        format.json { render json: @oferta_educativa, status: :created, location: @oferta_educativa }
      else
        format.html { render action: "new" }
        format.json { render json: @oferta_educativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /oferta_educativas/1
  # PUT /oferta_educativas/1.json
  def update
    @oferta_educativa = OfertaEducativa.find(params[:id])

    respond_to do |format|
      if @oferta_educativa.update_attributes(params[:oferta_educativa])
        format.html { redirect_to @oferta_educativa, notice: 'Oferta educativa was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @oferta_educativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oferta_educativas/1
  # DELETE /oferta_educativas/1.json
  def destroy
    @oferta_educativa = OfertaEducativa.find(params[:id])
    @oferta_educativa.destroy

    respond_to do |format|
      format.html { redirect_to oferta_educativas_url }
      format.json { head :ok }
    end
  end
end
