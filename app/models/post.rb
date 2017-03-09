class Post < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :forks
  has_many :favorited_by, through: :forks, source: :user


end
