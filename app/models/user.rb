class User < Sequel::Model
  def self.from_omniauth(auth)
    user = User.first(auth.slice(:provider, :uid))
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
      User.create(values)
    end
  end
end