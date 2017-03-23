class DashboardsController < ApplicationController
  before_filter :authenticate_user!
  
  #before_filter :authenticate_user!
  # GET /dashboards
  # GET /dashboards.json
  def index
    @search = User.ransack(params[:search])
    @users = @search.result.paginate(:per_page => 15, :page => params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def rsemanal
    @prospectosNo=Prospecto.my(current_user.id).tomorrow

  end

  def rcircular
  end

  def empleados
    if params[:q] == current_user.id
      redirect_to root_path, :flash => { :error => "No es posible agregar el usuario." }
    end  
    @users = User.where("username like ? and id <> ?", "%#{params[:q]}%",current_user.id)
    if @users.empty?
      redirect_to root_path, :flash => { :error => "El usuario no existe." }
    end
    respond_to do |format|
      format.html
      format.json { render :json => @users.map(&:attributes) }
    end        
  end
end
