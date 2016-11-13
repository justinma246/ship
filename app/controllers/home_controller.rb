class HomeController < ApplicationController
  helper_method :current_user

  def current_user
    User[session[:user_id]] if session[:user_id]
  end

  def login
    @login = true
    redirect_to home_index_path if session[:user_id]
  end

  def index
    @login = false
    @index_props = { user: current_user }
    redirect_to root_path unless session[:user_id]
  end

  def profile
    @current_user = current_user
  end

  def profilePost
    #redirect_to profile_path
    values = {
      bio: params["user"]["biography"],
      gender: params["user"]["gender"],
      age: params["user"]["age"],
      threshold: params["user"]["threshold"],
      interested_in: params["user"]["from"]        
    }
    current_user.update(values)
    redirect_to profile_path
  end

end
