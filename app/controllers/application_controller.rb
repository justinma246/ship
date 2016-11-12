class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
 
  def current_user
    @current_user ||= User.first(session[:user_id]) if session[:user_id]
  end
end
