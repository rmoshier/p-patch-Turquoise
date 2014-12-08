class User < ActiveRecord::Base
  has_many :userstools
  has_many :tools, through: :userstools
  has_many :posts
  validates :email, :name, :password, :uid, presence: true

    def self.create_from_omniauth(auth_hash)
      image = auth_hash["info"]["image"].gsub!(/normal.jpeg$/,"bigger.jpeg")
      User.create(
        uid:        auth_hash["uid"].to_s,
        photo_url:  image,
        # photo_url needs to be subbing _normal.jpg to _bigger.jpg
        name:   auth_hash["info"]["name"],
        email: "rachel@email.com",
        password: "password!"
      )
    end

    def self.find_or_create_from_omniauth(auth_hash)
      if user = User.find_by(uid: auth_hash["uid"].to_s)
          return user
      else
          User.create_from_omniauth(auth_hash)
      end
    end

end
