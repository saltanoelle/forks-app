class AddBoardIdToFork < ActiveRecord::Migration[5.0]
  def change
     add_column :forks, :board_id, :integer
  end
end
