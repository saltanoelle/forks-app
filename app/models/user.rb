class User < ApplicationRecord
  has_many :posts
  # has_many :forks
 
  has_secure_password
  
end
