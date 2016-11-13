class HomeController < ApplicationController
  helper_method :current_user

  def current_user
    User[session[:user_id]] if session[:user_id]
  end

  def login
    @login = true
    redirect_to home_index_path if session[:user_id]
  end

  def count_ships(pair)
    Shipping.where(:user1_id=>pair.user1_id, :user2_id=>pair.user2_id, :pass_count=>1).count
  end

  def index
    @login = false
    @index_props = { user: current_user }
    if current_user
      you_voted = Shipping.where(:judge_id => current_user.uid).all
      sailed = []
      you_voted.each do |ship|
        count = count_ships(ship)
        if count >= 2
          sailed.push({
            user1: User.where(:uid=>ship.user1_id).first,
            user2: User.where(:uid=>ship.user2_id).first,
            voteCount: count,
          })
        end 
      end
      @index_props["you_voted"] = sailed
      sailed2 = []
      voted_you = Shipping.where(:user1_id => current_user.uid).all + Shipping.where(:user2_id => current_user.uid).all
      voted_you.each do |ship|
        count = count_ships(ship)
        if count >= 2
          sailed2.push({
            user1: User.where(:uid=>ship.user1_id).first,
            user2: User.where(:uid=>ship.user2_id).first,
            voteCount: count,
          })
        end 
      end
      @index_props["voted_you"] = sailed2
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
