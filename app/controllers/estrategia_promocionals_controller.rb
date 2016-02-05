class EstrategiaPromocionalsController < ApplicationController
  before_filter :authenticate_user!
  helper_method :sort_column, :sort_direction  
  # GET /estrategia_promocionals
  # GET /estrategia_promocionals.json
  def index
    @estrategia_promocionals = EstrategiaPromocional.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estrategia_promocionals }
    end
  end

  # GET /estrategia_promocionals/1
  # GET /estrategia_promocionals/1.json
  def show
    @estrategia_promocional = EstrategiaPromocional.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @estrategia_promocional }
    end
  end

  # GET /estrategia_promocionals/new
  # GET /estrategia_promocionals/new.json
  def new
    @estrategia_promocional = EstrategiaPromocional.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estrategia_promocional }
    end
  end

  # GET /estrategia_promocionals/1/edit
  def edit
    @estrategia_promocional = EstrategiaPromocional.find(params[:id])
  end

  # POST /estrategia_promocionals
  # POST /estrategia_promocionals.json
  def create
    @estrategia_promocional = EstrategiaPromocional.new(params[:estrategia_promocional])

    respond_to do |format|
      if @estrategia_promocional.save
        format.html { redirect_to @estrategia_promocional, notice: 'Estrategia promocional was successfully created.' }
        format.json { render json: @estrategia_promocional, status: :created, location: @estrategia_promocional }
      else
        format.html { render action: "new" }
        format.json { render json: @estrategia_promocional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /estrategia_promocionals/1
  # PUT /estrategia_promocionals/1.json
  def update
    @estrategia_promocional = EstrategiaPromocional.find(params[:id])

    respond_to do |format|
      if @estrategia_promocional.update_attributes(params[:estrategia_promocional])
        format.html { redirect_to @estrategia_promocional, notice: 'Estrategia promocional was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @estrategia_promocional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estrategia_promocionals/1
  # DELETE /estrategia_promocionals/1.json
  def destroy
    @estrategia_promocional = EstrategiaPromocional.find(params[:id])
    @estrategia_promocional.destroy

    respond_to do |format|
      format.html { redirect_to estrategia_promocionals_url }
      format.json { head :ok }
    end
  end
    def sort_column
    if params[:sort] !=nil
      params[:sort] 
    else
      "id"
    end
  end
  
  def sort_direction
    if params[:direction] != nil
        params[:direction]
    else
      "desc"
    end
  end
end
