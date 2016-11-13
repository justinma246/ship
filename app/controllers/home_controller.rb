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
    user = current_user

    if user
      @index_props["you_voted"] = user.my_ships
      @index_props["voted_you"] = user.shipped_with
    end
    # our_ships = Shipping.where(:user1_id => current_user.uid).all +
    #   Shipping.where(:user2_id => current_user.uid).all
    # our_ships_distinct_sailed = our_ships.where(:pass_count => 1).distinct
    # our_ships_distinct_sailed.each do |ship|
    #   puts ship.user1_id
    #   puts ship.user2_id
    # end
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
