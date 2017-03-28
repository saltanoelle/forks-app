class Restaurant < ApplicationRecord
  has_many :posts
  has_many :restaurants
  extend FriendlyId
  friendly_id :name, use: :slugged
  

end
