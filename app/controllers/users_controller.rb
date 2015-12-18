class UsersController < ApplicationController

  def log_in
  end

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    redirect_to root_path
  end

  def show
    authenticate!
    if current_user.account == 'chef'
      redirect_to orders_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :account)
  end


end
