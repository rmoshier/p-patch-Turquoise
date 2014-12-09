class Tool < ActiveRecord::Base
  has_many :userstools
  has_many :users, through: :userstools
end
