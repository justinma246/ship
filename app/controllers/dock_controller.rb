class DockController < ApplicationController
  helper_method :current_user
  def current_user
    User[session[:user_id]] if session[:user_id]
  end
  def generate_pair
  	puts "aoisdjfioajsdoifjaiosdjfioa"
  	id = Random.new(Random.new_seed)
  	id1 = 0;
  	id2 = 0;
  	if User.all.length < 3
  		{user1: current_user, user2: current_user}
  	else
	  	while id1 == 0 || id1 == session[:user_id]
	  		id1 = id.rand(User.all.length) + 1
	  	end
	  	while id2 == 0 || id2 == id1 || id2 == session[:user_id]
	  		id2 = id.rand(User.all.length) + 1
	  	end
	  	{user1: User[id1], user2: User[id2]}
	  end
  end
  def index
  	@index_props = generate_pair
  	puts "ODISAFIOASJDFIOAOJIDSF"
  	puts @index_props
  end
  def sail

  	puts "SAILED the ship"
  end
  def sink
  	
  	puts "SUNK the ship"
  end
end
