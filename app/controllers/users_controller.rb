class UsersController < ApplicationController
before_action :logged_in_user, only: [:index, :edit, :destroy]
before_action :correct_user,   only: [:edit]
before_action :admin_user,     only: :destroy


  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
  	@user = User.new(user_params)
    if @user.save
    log_in @user
    redirect_to @user

  else
    render 'new'
  end
end



  private

    def user_params
    	params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
    end
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
