class User < ActiveRecord::Base
  validates :email, :name, :password, :uid, presence: true

  def self.create_from_omniauth(auth_hash)
    # Create a user
    User.create(
      uid:        auth_hash["uid"].to_s,
      photo_url: auth_hash["info"]["image"],
      name:   auth_hash["info"]["name"],
      email: "rachel@email.com",
      password: "password!"
    )
  end

  def self.find_or_create_from_omniauth(auth_hash)
    # Find or create a user
    if user = User.find_by(uid: auth_hash["uid"].to_s)
      return user
    else
      User.create_from_omniauth(auth_hash)
    end
  end

end
