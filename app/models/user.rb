class User < ApplicationRecord
  has_many :posts
  has_many :forks

  has_many :favorites, through: :forks, source: :post
  has_many :boards
  has_many :comments
 
  has_secure_password

  
end
