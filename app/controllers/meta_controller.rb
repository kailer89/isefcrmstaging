class MetaController < ApplicationController
  before_filter :authenticate_user!
  # GET /meta
  # GET /meta.json
  def index
    @meta = Meta.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meta }
    end
  end

  # GET /meta/1
  # GET /meta/1.json
  def show
    @meta = Meta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meta }
    end
  end

  # GET /meta/new
  # GET /meta/new.json
  def new
    @meta = Meta.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meta }
    end
  end

  # GET /meta/1/edit
  def edit
    @meta = Meta.find(params[:id])
  end

  # POST /meta
  # POST /meta.json
  def create
    @meta = Meta.new(params[:meta])

    respond_to do |format|
      if @meta.save
        format.html { redirect_to @meta, notice: 'Meta was successfully created.' }
        format.json { render json: @meta, status: :created, location: @meta }
      else
        format.html { render action: "new" }
        format.json { render json: @meta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meta/1
  # PUT /meta/1.json
  def update
    @meta = Meta.find(params[:id])

    respond_to do |format|
      if @meta.update_attributes(params[:meta])
        format.html { redirect_to @meta, notice: 'Meta was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @meta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meta/1
  # DELETE /meta/1.json
  def destroy
    @meta = Meta.find(params[:id])
    @meta.destroy

    respond_to do |format|
      format.html { redirect_to meta_index_url }
      format.json { head :ok }
    end
  end
end
