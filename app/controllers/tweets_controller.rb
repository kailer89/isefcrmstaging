class TweetsController < ApplicationController
  before_filter :authenticate_user!
  
  def send_tweet
    @tweet = Tweet.find(params[:id])
      atoken = session['twitterinfo']['extra']['access_token'].token
      asecret = session['twitterinfo']['extra']['access_token'].secret

      Twitter.configure do |config|
        config.consumer_key = "RYtwkKaKy6TfIrUILDPN8Q"
        config.consumer_secret = "N4j5OWyIVDBTz40m244wT9hq3hK7RcaVjG3yhJc9Jo"
        config.oauth_token = atoken
        config.oauth_token_secret = asecret 
      end

      Twitter.update(@tweet.tweet) 
      redirect_to "/#{@tweet.model_name}/#{@tweet.model_id}/edit/", notice: 'tweet was successfully created.'    
  end  
  # GET /tweets
  # GET /tweets.json
  def index
    @tweets = Tweet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tweets }
    end
  end

  # GET /tweets/1
  # GET /tweets/1.json
  def show
    @tweet = Tweet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tweet }
    end
  end

  # GET /tweets/new
  # GET /tweets/new.json
  def new
    @tweet = Tweet.new
    @tweet.model_name=params[:model_name]
    @tweet.model_id=params[:model_id]  
    @tweet.created_by = current_user.id
    @tweet.user_id =current_user.id
    @tweet.sede_id =current_user.sede_id    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tweet }
    end
  end

  # GET /tweets/1/edit
  def edit
    @tweet = Tweet.find(params[:id])
  end

  # POST /tweets
  # POST /tweets.json
  def create
    @tweet = Tweet.new(params[:tweet])

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to "/#{@tweet.model_name}/#{@tweet.model_id}/edit/", notice: 'tweet was successfully created.' }
        format.json { render json: @tweet, status: :created, location: @tweet }
      else
        format.html { render action: "new" }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tweets/1
  # PUT /tweets/1.json
  def update
    @tweet = Tweet.find(params[:id])

    respond_to do |format|
      if @tweet.update_attributes(params[:tweet])
        format.html { redirect_to "/#{@tweet.model_name}/#{@tweet.model_id}/edit/", notice: 'tweet was successfully created.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweets/1
  # DELETE /tweets/1.json
  def destroy


rol = Role.where(:id=>current_user.role).first
        if rol.nombre == "ACRM"
    
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
else
  flash[:error] ='No tienes permiso para realizar esta accion'

end


    respond_to do |format|
      format.html { redirect_to "/#{@tweet.model_name}/#{@tweet.model_id}/edit/", notice: 'tweet was successfully created.' }
      format.json { head :ok }
    end
  end
end
