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
end
