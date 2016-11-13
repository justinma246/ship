class DockController < ApplicationController
  def current_user
    User[session[:user_id]]
  end

  def generate_pair
    user = current_user

    pairs = User
      .db[:users___a]
      .join(:users___b)
      .left_join(
        :shippings___s,
        a__uid: :s__user1_id,
        b__uid: :s__user2_id,
        s__judge_id: user.uid,
      )
      .where { a__uid < b__uid }
      .exclude(a__uid: user.uid)
      .exclude(b__uid: user.uid)
      .where(s__id: nil)
      .select(
        :a__id___id1,
        :a__uid___uid1,
        :a__name___name1,
        :b__id___id2,
        :b__uid___uid2,
        :b__name___name2
      )

    if pairs.count.zero?
      { user1: current_user, user2: current_user }
    else
      # TODO: Improve performance of this line
      pair = pairs.order { random.function }.first

      session[:ship_user1] = pair[:uid1]
      session[:ship_user2] = pair[:uid2]
      { user1: User[pair[:id1]], user2: User[pair[:id2]] }
    end
  end

  def index
    @index_props = generate_pair
  end

  def decision
    values = {
      user1_id: session[:ship_user1],
      user2_id: session[:ship_user2],
      judge_id: current_user.uid,
      pass_count: params['pass'],
    }
    Shipping.create(values)

    render json: generate_pair
  end
end
