class User < ApplicationRecord
  has_many :posts
  has_many :forks

  has_many :favorites, through: :forks, source: :post
  has_many :boards
  has_many :comments
 
  has_secure_password

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true
  validates :password, :presence => true




  
end
