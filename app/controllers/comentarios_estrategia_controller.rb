class ComentariosEstrategiaController < ApplicationController
  before_filter :authenticate_user!
  helper_method :sort_column, :sort_direction  
  # GET /comentarios_estrategia
  # GET /comentarios_estrategia.json
  def index
    @comentarios_estrategia = ComentariosEstrategium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comentarios_estrategia }
    end
  end

  # GET /comentarios_estrategia/1
  # GET /comentarios_estrategia/1.json
  def show
    @comentarios_estrategium = ComentariosEstrategium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comentarios_estrategium }
    end
  end

  # GET /comentarios_estrategia/new
  # GET /comentarios_estrategia/new.json
  def new
    @comentarios_estrategium = ComentariosEstrategium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comentarios_estrategium }
    end
  end

  # GET /comentarios_estrategia/1/edit
  def edit
    @comentarios_estrategium = ComentariosEstrategium.find(params[:id])
  end

  # POST /comentarios_estrategia
  # POST /comentarios_estrategia.json
  def create
    @comentarios_estrategium = ComentariosEstrategium.new(params[:comentarios_estrategium])

    respond_to do |format|
      if @comentarios_estrategium.save
        format.html { redirect_to @comentarios_estrategium, notice: 'Comentarios estrategium was successfully created.' }
        format.json { render json: @comentarios_estrategium, status: :created, location: @comentarios_estrategium }
      else
        format.html { render action: "new" }
        format.json { render json: @comentarios_estrategium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comentarios_estrategia/1
  # PUT /comentarios_estrategia/1.json
  def update
    @comentarios_estrategium = ComentariosEstrategium.find(params[:id])

    respond_to do |format|
      if @comentarios_estrategium.update_attributes(params[:comentarios_estrategium])
        format.html { redirect_to @comentarios_estrategium, notice: 'Comentarios estrategium was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @comentarios_estrategium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comentarios_estrategia/1
  # DELETE /comentarios_estrategia/1.json
  def destroy
    @comentarios_estrategium = ComentariosEstrategium.find(params[:id])
    @comentarios_estrategium.destroy

    respond_to do |format|
      format.html { redirect_to comentarios_estrategia_url }
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
