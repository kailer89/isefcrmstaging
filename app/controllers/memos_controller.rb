class MemosController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /memos
  # GET /memos.json
  def index
    if params[:user_id] != nil
      @memos = Memo.where(:user_id => current_user.id)
    else
      @memos = Memo.all
    end
        
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @memos }
    end
  end

  # GET /memos/1
  # GET /memos/1.json
  def show
    @memo = Memo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @memo }
    end
  end

  # GET /memos/new
  # GET /memos/new.json
  def new
    @memo = Memo.new
    @memo.model_name=params[:model_name]
    @memo.model_id=params[:model_id]
    @memo.created_by = current_user.id
    @memo.user_id =current_user.id
    @memo.sede_id =current_user.sede_id  
    @memo.pendiente = true   
    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @memo }
    end
  end

  # GET /memos/1/edit
  def edit
    @memo = Memo.find(params[:id])
  end
  def printview
    @memo = Memo.find(params[:id])
    render :layout => false
  end
  # POST /memos
  # POST /memos.json
  def create
    @memo = Memo.new(params[:memo])

    respond_to do |format|
      if @memo.save
        format.html { redirect_to "/#{@memo.model_name}/#{@memo.model_id}/edit/", notice: 'Memo was successfully created.' }
        format.json { render json: @memo, status: :created, location: @memo }
      else
        format.html { render action: "new" }
        format.json { render json: @memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /memos/1
  # PUT /memos/1.json
  def update
    @memo = Memo.find(params[:id])

    respond_to do |format|
      if @memo.update_attributes(params[:memo])
        format.html { redirect_to "/#{@memo.model_name}/#{@memo.model_id}/edit/", notice: 'Memo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memos/1
  # DELETE /memos/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"

    @memo = Memo.find(params[:id])
    @memo.destroy
else
   @memo = Memo.find(params[:id])
  flash[:error] ='No tienes permiso para realizar esta accion'
redirect_to "/#{@memo.model_name}/#{@memo.model_id}/edit/"
return
end
    
   

    respond_to do |format|
      format.html { redirect_to "/#{@memo.model_name}/#{@memo.model_id}/edit/" }
      format.json { head :ok }
    end
  end

  def convertir_memo
    @llamada = Memo.find(params[:id])
    if @llamada.pendiente == nil
      @llamada.pendiente =true
    else
      if @llamada.pendiente == true
        @llamada.pendiente =false
      else
        @llamada.pendiente = true
      end
    end
    @llamada.save
    redirect_to :back, :flash => { :info => "Cambiado estado de pendiente." }
  end

end
