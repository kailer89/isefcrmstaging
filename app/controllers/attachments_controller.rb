class AttachmentsController < ApplicationController
    before_filter :authenticate_user!
    
  # GET /attachments
  # GET /attachments.json
  def index
    @attachments = Attachment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attachments }
    end
  end

  # GET /attachments/1
  # GET /attachments/1.json
  def show
    @attachment = Attachment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @attachment }
    end
  end

  # GET /attachments/new
  # GET /attachments/new.json
  def new
    @attachment = Attachment.new
    @attachment.model_name=params[:model_name]
    @attachment.model_id=params[:model_id]  
    @attachment.created_by = current_user.id
    @attachment.user_id =current_user.id
    @attachment.sede_id =current_user.sede_id      

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attachment }
    end
  end

  # GET /attachments/1/edit
  def edit
    @attachment = Attachment.find(params[:id])
  end

  # POST /attachments
  # POST /attachments.json
  def create
    @attachment = Attachment.new(params[:attachment])

    if @attachment.model_id != nil
      respond_to do |format|
        if @attachment.save
          format.html { redirect_to "/#{@attachment.model_name}/#{@attachment.model_id}/edit/", notice: 'Attachment was successfully created.' }
          format.json { render json: @attachment, status: :created, location: @attachment }
        else
          format.html { render action: "new" }
          format.json { render json: @attachment.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to :back }
        format.json { head :no_content }
      end        
    end

  end

  # PUT /attachments/1
  # PUT /attachments/1.json
  def update
    @attachment = Attachment.find(params[:id])

    if @attachment.model_id != nil
      respond_to do |format|
        if @attachment.update_attributes(params[:attachment])
          format.html { redirect_to "/#{@attachment.model_name}/#{@attachment.model_id}/edit/", notice: 'Attachment was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render action: "edit" }
          format.json { render json: @attachment.errors, status: :unprocessable_entity }
        end
      end
    else      
      respond_to do |format|
        format.html { redirect_to :back }
        format.json { head :no_content }
      end       
    end
  end

  # DELETE /attachments/1
  # DELETE /attachments/1.json
  def destroy

      rol = Role.where(:id=>current_user.role).first

        if rol.nombre == "ACRM"

    @attachment = Attachment.find(params[:id])
    @attachment.destroy
else
  @attachment = Attachment.find(params[:id])
  flash[:error] ='No tienes permiso para realizar esta accion'
redirect_to "/#{@attachment.model_name}/#{@attachment.model_id}/edit/"
return
end


    
    if @attachment.model_id != nil
      respond_to do |format|
        format.html { redirect_to "/#{@attachment.model_name}/#{@attachment.model_id}/edit/" }
        format.json { head :ok }
      end
    else
      respond_to do |format|
        format.html { redirect_to :back }
        format.json { head :no_content }
      end      
    end
  end
end
