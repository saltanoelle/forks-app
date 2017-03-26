class PostsController < ApplicationController
before_filter :require_permission, only: [:edit, :delete]


def require_permission
  if current_user != Post.find(params[:id]).user
    redirect_to "/posts"
    #Or do something else here
  end
end

 
  def index
    
    @posts = Post.all
 
   
  end

  def search
   search_term = params[:search]

   @businesses = Yelp.client.search('San Francisco', { term: 'food' }).businesses
  end

  def new
    @post = Post.new
   
  end
  
  def create
    response = Unirest.post("http://uploads.im/api?upload", parameters: {file: params[:image]}).body
    @post = Post.create(
      food: params[:food],
      price: params[:price],
      image: response["data"]["img_url"],
      restaurant_id: params[:restaurant]["restaurant_id"],
      # if restaurant_id == null
      # render "restaurants/new"
      # end 
      user_id: current_user.id
      )


    if @post.save
    flash[:success] = "Post successfully created!"
    redirect_to "/posts/#{@post.id}"
   else
    render :new
  end
  end

  def show
    post_id = params[:id]
    @post = Post.find_by(id: post_id)
    # if product_id == "random"
    #   @product = Product.all.sample
    # end 
  
    @restaurant = @post.restaurant
    user_id = params[:id]
    @user = User.find_by(id: user_id)
    @user = @post.user
  end

  def edit
    @post = current_user.posts.find(params[:id])
    post_id = params[:id]
    @post = Post.find_by(id: post_id)

  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.update(
      food: params[:food],
      price: params[:price],
      image: params[:image],
      restaurant_id: params[:restaurant_id]
   
      )
    if @post.save
      flash[:success] = "Post Updated"
      redirect_to "/posts/#{@post.id}"
    else
      render :edit
    end  
  end

 def destroy
  post_id = params[:id]
  @post = Post.find_by(id: post_id)
  @post.destroy
  flash[:warning] = "Post successfully deleted!"
  redirect_to "/posts"
  end 

  

 
end

