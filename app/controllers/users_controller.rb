class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new(params_user)
  end

  def create
    @user = User.new(params_user)
    @user.save
    redirect_to user_path(@user)
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def params_user
    params.require(:user).permit(:name, :email, :password)
  end
end
