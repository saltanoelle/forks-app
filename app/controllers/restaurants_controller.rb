class RestaurantsController < ApplicationController
  def index
   @restaurants = Restaurant.all
  end
  def show
    
    restaurant_id = params[:id]
    @restaurant = Restaurant.find_by(id: restaurant_id)
  end


end
