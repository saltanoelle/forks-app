class ForksController < ApplicationController
def index
  @forks = Fork.all
end

def create
  post_id = params[:post_id]

 fork = Fork.create(
  user_id: current_user.id,
  post_id: post_id)

    
 redirect_to "/posts"
end


  
end
