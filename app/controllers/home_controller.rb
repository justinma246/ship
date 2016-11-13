class HomeController < ApplicationController
  helper_method :current_user

  def current_user
    User[session[:user_id]] if session[:user_id]
  end

  def login
    puts "HELLO"
    puts session[:user_id]
    redirect_to home_index_path if session[:user_id]
  end

  def index
    @index_props = { user: current_user }
    redirect_to root_path unless session[:user_id]
  end

  def profile
    puts "get profile stuff"
  end

  def profilePost
    #redirect_to profile_path
    values = {
      bio: params["user"]["biography"],
      interested_in: params["user"]["from"]        
    }
    current_user.update(values)
    redirect_to profile_path
  end

end
