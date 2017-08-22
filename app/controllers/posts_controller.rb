class PostsController < ApplicationController
  before_filter :authenticate_user!
  
  def send_post

    @post = Post.find(params[:id])
    me = FbGraph::User.me(session["token"])

    me.feed!(
      :message => @post.mensaje,
      :picture => '',
      :link => '',
      :name => "Enviado por " + current_user.username + " desde ProtoCRM Education CRM",
      :description => @post.mensaje
    )
    redirect_to "/#{@post.model_name}/#{@post.model_id}/edit/", notice: 'Post was successfully created.' 
  end  
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new
    @post.model_name=params[:model_name]
    @post.model_id=params[:model_id]      
    @post.created_by = current_user.id
    @post.user_id =current_user.id
    @post.sede_id =current_user.sede_id 
     
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to "/#{@post.model_name}/#{@post.model_id}/edit/", notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to "/#{@post.model_name}/#{@post.model_id}/edit/", notice: 'Post was successfully created.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
  

    @post = Post.find(params[:id])
    @post.destroy

else
  flash[:error] ='No tienes permiso para realizar esta accion'

end
    
   

    respond_to do |format|
      format.html { redirect_to "/#{@post.model_name}/#{@post.model_id}/edit/", notice: 'Post was successfully created.' }
      format.json { head :ok }
    end
  end
end
