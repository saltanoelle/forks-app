class Fork < ApplicationRecord
 belongs_to :user
 belongs_to :post
 belongs_to :board
 

end
