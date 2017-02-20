class User < ApplicationRecord
  has_many :posts
  # has_many :restaurants through :forks
  has_secure_password
end
