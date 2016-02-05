class MiPlanEstrategicoDePromocionPepsController < ApplicationController
  before_filter :authenticate_user!
  # GET /mi_plan_estrategico_de_promocion_peps
  # GET /mi_plan_estrategico_de_promocion_peps.json
  def index
    @mi_plan_estrategico_de_promocion_peps = MiPlanEstrategicoDePromocionPep.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mi_plan_estrategico_de_promocion_peps }
    end
  end

  # GET /mi_plan_estrategico_de_promocion_peps/1
  # GET /mi_plan_estrategico_de_promocion_peps/1.json
  def show
    @mi_plan_estrategico_de_promocion_pep = MiPlanEstrategicoDePromocionPep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mi_plan_estrategico_de_promocion_pep }
    end
  end

  # GET /mi_plan_estrategico_de_promocion_peps/new
  # GET /mi_plan_estrategico_de_promocion_peps/new.json
  def new
    @mi_plan_estrategico_de_promocion_pep = MiPlanEstrategicoDePromocionPep.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mi_plan_estrategico_de_promocion_pep }
    end
  end

  # GET /mi_plan_estrategico_de_promocion_peps/1/edit
  def edit
    @mi_plan_estrategico_de_promocion_pep = MiPlanEstrategicoDePromocionPep.find(params[:id])
        @tareas = Tarea.where(:model_name=>"mi_plan_estrategico_de_promocion_peps",:model_id=>@mi_plan_estrategico_de_promocion_pep.id)
    @memos = Memo.where(:model_name=>"mi_plan_estrategico_de_promocion_peps",:model_id=>@mi_plan_estrategico_de_promocion_pep.id)
    @attachments = Attachment.where(:model_name=>"mi_plan_estrategico_de_promocion_peps",:model_id=>@mi_plan_estrategico_de_promocion_pep.id)
    @llamadas = Llamada.where(:model_name=>"mi_plan_estrategico_de_promocion_peps",:model_id=>@mi_plan_estrategico_de_promocion_pep.id)
    @correos = Correo.where(:model_name=>"mi_plan_estrategico_de_promocion_peps",:model_id=>@mi_plan_estrategico_de_promocion_pep.id)
  end

  # POST /mi_plan_estrategico_de_promocion_peps
  # POST /mi_plan_estrategico_de_promocion_peps.json
  def create
    @mi_plan_estrategico_de_promocion_pep = MiPlanEstrategicoDePromocionPep.new(params[:mi_plan_estrategico_de_promocion_pep])

    respond_to do |format|
      if @mi_plan_estrategico_de_promocion_pep.save
        format.html { redirect_to @mi_plan_estrategico_de_promocion_pep, notice: 'Mi plan estrategico de promocion pep was successfully created.' }
        format.json { render json: @mi_plan_estrategico_de_promocion_pep, status: :created, location: @mi_plan_estrategico_de_promocion_pep }
      else
        format.html { render action: "new" }
        format.json { render json: @mi_plan_estrategico_de_promocion_pep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mi_plan_estrategico_de_promocion_peps/1
  # PUT /mi_plan_estrategico_de_promocion_peps/1.json
  def update
    @mi_plan_estrategico_de_promocion_pep = MiPlanEstrategicoDePromocionPep.find(params[:id])

    respond_to do |format|
      if @mi_plan_estrategico_de_promocion_pep.update_attributes(params[:mi_plan_estrategico_de_promocion_pep])
        format.html { redirect_to @mi_plan_estrategico_de_promocion_pep, notice: 'Mi plan estrategico de promocion pep was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @mi_plan_estrategico_de_promocion_pep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mi_plan_estrategico_de_promocion_peps/1
  # DELETE /mi_plan_estrategico_de_promocion_peps/1.json
  def destroy
    @mi_plan_estrategico_de_promocion_pep = MiPlanEstrategicoDePromocionPep.find(params[:id])
    @mi_plan_estrategico_de_promocion_pep.destroy

    respond_to do |format|
      format.html { redirect_to mi_plan_estrategico_de_promocion_peps_url }
      format.json { head :ok }
    end
  end
end
