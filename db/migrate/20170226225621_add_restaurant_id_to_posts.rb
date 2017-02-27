class AddRestaurantIdToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :restaurant_id, :integer
  end
end
