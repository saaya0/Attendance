class Admin::UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    user.save
    redirect_to users_path
  end

  def index
    @users = User.all
  end


  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana)
  end
end
