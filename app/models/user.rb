# +------------------+-----------+--------------+---------+-------+-----+-----+
# |                                   users                                   |
# +------------------+-----------+--------------+---------+-------+-----+-----+
# | Column           | Ruby Type | DB Type      | Default | Null? | PK? | FK? |
# +------------------+-----------+--------------+---------+-------+-----+-----+
# | id               | integer   | integer      |    -    |   N   |  Y  |  N  |
# | provider         | string    | varchar(255) |    -    |   Y   |  N  |  N  |
# | uid              | string    | varchar(255) |    -    |   Y   |  N  |  N  |
# | name             | string    | varchar(255) |    -    |   Y   |  N  |  N  |
# | oauth_token      | string    | varchar(255) |    -    |   Y   |  N  |  N  |
# | oauth_expires_at | datetime  | timestamp    |    -    |   Y   |  N  |  N  |
# | age              | integer   | integer      |    -    |   Y   |  N  |  N  |
# | gender           | string    | varchar(255) |    -    |   Y   |  N  |  N  |
# | interested_in    | string    | varchar(255) |    -    |   Y   |  N  |  N  |
# | bio              | string    | varchar(255) |    -    |   Y   |  N  |  N  |
# | ships            | integer   | integer      |    -    |   Y   |  N  |  N  |
# | last_active      | datetime  | timestamp    |    -    |   Y   |  N  |  N  |
# | picture          | string    | varchar(255) |    -    |   Y   |  N  |  N  |
# | threshold        | integer   | integer      |    -    |   Y   |  N  |  N  |
# +------------------+-----------+--------------+---------+-------+-----+-----+

class User < Sequel::Model
  def self.from_omniauth(auth)
    query = {
      provider: auth[:provider],
      uid: auth[:uid]
    }
    user = User.first(query)
    values = {
      provider: auth.provider,
      uid: auth.uid,
      name: auth.info.name,
      oauth_token: auth.credentials.token,
      oauth_expires_at: Time.at(auth.credentials.expires_at),
    }
    if user
      user.update(values)
    else
      user = User.create(values)
    end
    @facebook = user.facebook

    values = {
      picture: @facebook.get_object("me?fields=picture.height(800)")["picture"]["data"]["url"]
    }
    user.update(values)
    user
  end

  def facebook
    @facebook = Koala::Facebook::API.new(oauth_token)
  end

  def count_ships(pair)
    Shipping.where(:user1_id=>pair.user1_id, :user2_id=>pair.user2_id, :pass_count=>1).count
  end

  def shipped_with
    sailed = []
    voted_you = Shipping
      .where(:user1_id => uid)
      .all + Shipping.where(:user2_id => uid).all
    voted_you.each do |ship|
      count = count_ships(ship)
      if count >= 2
        sailed.push(
          user1: User.where(:uid=>ship.user1_id).first,
          user2: User.where(:uid=>ship.user2_id).first,
          voteCount: count,
        )
      end
    end
    sailed.uniq
  end

  def my_ships
    you_voted = Shipping.where(:judge_id => uid).all
    sailed = []
    you_voted.each do |ship|
      count = count_ships(ship)
      if count >= 2
        sailed.push(
          user1: User.where(:uid=>ship.user1_id).first,
          user2: User.where(:uid=>ship.user2_id).first,
          voteCount: count,
        )
      end
    end
    sailed
  end
end
