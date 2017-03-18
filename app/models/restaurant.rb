class Restaurant < ApplicationRecord
  has_many :posts
  has_many :restaurants
  

end
