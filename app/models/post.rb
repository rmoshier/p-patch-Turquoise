class Post < ActiveRecord::Base
  validates :content, presence: true
  validates :author, presence: true
  validates :title, presence: true
  # validates :user_id, presence: true
end
