class RemoveUrlFromPost < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :url, :string
  end
end
