class User < ActiveRecord::Base
  has_many :userstools
  has_many :tools, through: :userstools
  has_many :posts
end
