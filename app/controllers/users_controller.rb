class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def index
    @users = User.all
  end

  def update 
    if current_user.update_attributes(user_params)
      flash[:notice] = "User information udpated"
      redirect_to edit_user_registration_path
    else
      flash[:error] = "Invalid user information"
      redirect_to edit_user_registration_path
    end
  end

  def show
    @user = User.find(params[:id])
    
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end