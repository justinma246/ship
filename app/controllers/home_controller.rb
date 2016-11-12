class HomeController < ApplicationController
  helper_method :current_user

  def current_user
    User[session[:user_id]] if session[:user_id]
  end

  def login
    redirect_to '/home#index' if session[:user_id]
  end

  def index
    @index_props = { user: current_user }
    redirect_to '/home#login' unless session[:user_id]
  end
end
