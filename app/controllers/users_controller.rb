class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.save
    redirect_to user_path
  end

  def show
    @user = User.find(params[:id])
  end

  # private

  # def user_params
  #   params.require(:user).permit(:email, :first_name, :last_name)
  # end



end
