class AddCategoriesToRestaurant < ActiveRecord::Migration[5.0]
  def change
     add_column :restaurants, :categories, :text

  end
end
