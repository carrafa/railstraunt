class UsersController < ApplicationController

  def log_in
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    if user.save
      redirect_to root_path
    else
      flash[:error] = user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    authenticate!
    if current_user.account == 'chef'
      redirect_to orders_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :account, :password_confirmation)
  end


end
