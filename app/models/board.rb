class Board < ApplicationRecord
  has_many :forks
  belongs_to :user
end
