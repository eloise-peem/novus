class UserInfosController < ApplicationController

  def new
  	@user_info = UserInfo.new
  end

  def create
  current_user.update_attribute(:confirmed, 1)
	@user_info = UserInfo.new(user_info_params)
  @user_info.first_name = current_user.first_name
  @user_info.last_name = current_user.last_name
  @user_info.contact_number =current_user.contact_number
  @user_info.links = current_user.links
  @user_info.picture = current_user.picture
	@user_info.email = current_user.email
  @user_info.user_id = current_user.id
  @user_info.interest = current_user.interest
  @user_info.degree = current_user.degree
  @user_info.field = current_user.field
  current_user.confirmed = true
	
		if @user_info.save
			redirect_to root_url
		end
  end

  def profile
    @user_info = UserInfo.find(params[:id])
    @posts = Post.all
  end

  def work_progress
    @user_info = UserInfo.find(params[:id])
    @posts = Post.all
  end

  def index
    @user_info = UserInfo.all
  end

  def show
	if current_user.present? 
		@user_info = UserInfo.find(params[:id])	
	else
		redirect_to root_url
	end
  end

   def edit
	if current_user.present? 
		@user_info = UserInfo.find(params[:id])
    session[:return_to] ||= request.referer
	else
		redirect_to root_url
	end
  end
  
   def update
    @user_info = UserInfo.find(params[:id])

    if @user_info.update(params[:user_info].permit(:first_name, :last_name, :contact_number, :links, :picture, :field, :degree, :interest))
      redirect_to session.delete(:return_to)
    else
      render 'edit'
    end
   end

   def user_info_params
    params.require(:user_info).permit(:first_name, :last_name, :contact_number, :links, :picture, :field, :degree, :interest)
   end
	
end