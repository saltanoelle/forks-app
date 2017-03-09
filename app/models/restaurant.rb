class Restaurant < ApplicationRecord
  has_many :posts
  # has_many :users, through :forks

end
