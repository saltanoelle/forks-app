class RestaurantsController < ApplicationController
  def index
   @restaurants = Restaurant.all
   # @businesses = Unirest.get("https://api.yelp.com/v2/business/yelp-san-francisco").body
   # response = client.search('San Francisco')

  #  @businesses = Yelp.client.search('San Francisco', { term: 'food' }).businesses
  #  # @businesses= Yelp.client.business('yelp-new-york')
  #  @businesses.each do |business|
  #   @restaurant = Restaurant.create(
  #    name: business.name,
  #    # image_url: business.image_url,
  #    # rating_img_url: business.rating_img_url,
  #    location: business.location.display_address  
  #  )
  # end
   #@businesses = Yelp.client.search('location', { term: 'food' }).businesses

  

   # @responses = Yelp.client.business('yelp-san-francisco')
 end

    def new
    render :new
    end

    def create
    @restaurant = Restaurant.create(
      name: params[:name],
      location: params[:location]
      )


    if @restaurant.save
    flash[:success] = "Restaurant successfully created!"
    redirect_to "/restaurants/#{@restaurant.id}"
   else
    render :new
  end


  end
  def show
    
    restaurant_id = params[:id]
    @restaurant = Restaurant.find_by(id: restaurant_id)
    business_id = params[:id]
   @business = Yelp.client.search('San Francisco', { term: 'food' }).businesses

  end

   def search
    parameters = { term: params[:term], limit: 16 }
  end
end
