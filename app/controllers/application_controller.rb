class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



private


  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
  	redirect_to login_url unless current_user
  
  end

  def authorize
  	redirect_to login_url, if current_user.nil?
  	end
  end

  def admin
    current_user == 1
  end

  def require_admin
    redirect_to root_url unless admin
  end

  helper_method :current_user

end
