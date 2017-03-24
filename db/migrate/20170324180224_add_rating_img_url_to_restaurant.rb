class AddRatingImgUrlToRestaurant < ActiveRecord::Migration[5.0]
  def change
        add_column :restaurants, :rating_img_url, :string

  end
end
 