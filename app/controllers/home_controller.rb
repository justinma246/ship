class HomeController < ApplicationController
  helper_method :current_user

  def current_user
    User[session[:user_id]] if session[:user_id]
  end

  def index
    @home_props = { test: 'Hello' }
  end
end
