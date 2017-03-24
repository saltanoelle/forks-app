class RestaurantsController < ApplicationController
  def index
   @restaurants = Restaurant.all


  #  @businesses = Yelp.client.search('Paris', { term: 'dessert' }).businesses
  #  @businesses.each do |business|
  #   @restaurant = Restaurant.create(
  #    name: business.name,
  #    image_url: business.image_url,
  #    rating_img_url: business.rating_img_url,
  #    location: business.location.display_address)
  # end

  

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
  search_term = params[:search]
  @restaurants = Restaurant.where("location LIKE ?", "%#{search_term}%")
   render :index


   # @businesses = Yelp.client.search('San Francisco', { params[:term] 'food' }).businesses
  end
end
