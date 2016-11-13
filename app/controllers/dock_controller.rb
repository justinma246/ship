class DockController < ApplicationController
  def current_user
    User[session[:user_id]]
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
      @@user1 = User[id1]
      @@user2 = User[id2]
      {user1: User[id1], user2: User[id2]}
    end
  end

  def index
    @index_props = generate_pair
  end

  def decision
    puts params
    values = {
      user1_id: @@user1.uid,
      user2_id: @@user2.uid,
      judge_id: current_user.uid,
      pass_count: 1,
    }
    Shipping.create(values)

    render json: generate_pair
  end
end
