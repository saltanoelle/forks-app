class PostsController < ApplicationController

  # before_action :authenticate_admin!, except:[:index, :show, :search, :new] 
  def index
    
    @posts = Post.all
  end

  # def search
  #   search_term = params[:search]
  # #ping database to find products that are similar to search term
  #   @products = Product.where("name LIKE ?", "%#{search_term}%")
  #   render :index
  # end

  def new
    @post = Post.new
   
  end
  
  def create
    @post = Post.create(
      food: params[:food],
      price: params[:price],
      image: params[:image],
      restaurant_id: params[:restaurant]["restaurant_id"]
      )

    if @post.save
    flash[:success] = "Product successfully created!"
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
  
    # @images = @product.images
    @restaurant = @post.restaurant
  end

  def edit
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
  @post = Product.find_by(id: post_id)
  @post.destroy
  flash[:warning] = "Post successfully deleted!"
  redirect_to "/posts"
  end 
end

