class AddBodyUserIdPostIdToComment < ActiveRecord::Migration[5.0]
  def change
      add_column :comments, :body, :text
      add_column :comments, :user_id, :integer
      add_column :comments, :post_id, :integer



  end
end
