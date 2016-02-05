class UsersController < ApplicationController
  def index
    redirect_to dashboards_path
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      flash[:notice] = "Successfully created User." 
      redirect_to dashboards_path
    else
      render :action => 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    params[:user].delete(:password) if params[:user][:password].blank?
    params[:user].delete(:password_confirmation) if params[:user][:password].blank? and params[:user][:password_confirmation].blank?
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated User."
      redirect_to edit_user_path(@user)
    else
      flash[:notice] = "Not updated User."
      redirect_to edit_user_path(@user)
    end
  end
  
  def destroy
    @user = User.find(params[:id])

    prospectosDelUser = Prospecto.where(:user_id => @user.id)

    if prospectosDelUser.empty?
            if @user.destroy
        flash[:notice] = "Successfully deleted User."
        redirect_to dashboards_path
      end
    else
      flash[:error] = "Imposible borrar puesto que hay prospectos que fueron creados por este usuario"
      redirect_to dashboards_path
    end
  end	

  def saved_search_add
    @saved_search = Search.create(:name=> params[:name],:description=>params[:description],:query => params[:q], :model_name=> params[:model_name], :user_id => current_user.id)

    respond_to do |format|
      if @saved_search.save
        format.html { redirect_to(:back) }
      else
        format.html { redirect_to(:back) }
      end
    end
  end


end
