class RestaurantsController < ApplicationController
  def index
   @restaurants = Restaurant.all
   # @businesses = Unirest.get("https://api.yelp.com/v2/business/yelp-san-francisco").body
   # response = client.search('San Francisco')

   @businesses = Yelp.client.search('San Francisco').businesses



  end
  def show
    
    restaurant_id = params[:id]
    @restaurant = Restaurant.find_by(id: restaurant_id)
  end


end
