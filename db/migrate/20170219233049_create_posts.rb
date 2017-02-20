class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :url
      t.string :food
      t.integer :price

      t.timestamps
    end
  end
end
