class User < ActiveRecord::Base
  validates :email, :name, :password, :uid, presence: true

  def self.create_from_omniauth(auth_hash)
    # Create a user
    User.create!(
      uid:        auth_hash["uid"].to_s,
      photo_url: auth_hash["info"]["image"],
      name:   auth_hash["info"]["name"],
    )
  rescue ActiveRecord::RecordInvalid
    nil
  end

  def self.find_or_create_from_omniauth(auth_hash)
    # Find or create a user
    user = User.find_by(uid: auth_hash["uid"].to_s) || User.create_from_omniauth(auth_hash)
    return user
  end


end
