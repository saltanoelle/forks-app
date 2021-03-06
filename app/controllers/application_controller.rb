class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  

  
  def authenticate_user!
    redirect_to '/login' unless current_user
  end

  def full_name
    first_name + last_name
  end



end
