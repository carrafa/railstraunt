module ApplicationHelper

  def current_user
    if session[:user_id]
      @current_user = @current_user || User.find(session[:user_id])
    end
  end

  def authenticate!
    redirect_to root_path unless current_user
  end

  def server_admin_authenticate!
    redirect_to user_path(current_user) unless current_user.account == "admin" || current_user.account == "server"
  end

  def admin_authenticate!
    redirect_to root_path unless current_user.account == "admin"
  end

end
