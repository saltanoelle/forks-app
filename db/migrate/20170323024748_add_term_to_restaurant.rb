class AddTermToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :term, :string
  end
end
