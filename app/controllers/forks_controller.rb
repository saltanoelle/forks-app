class ForksController < ApplicationController
def index
 
    @user = User.find(params[:id])
    @forks = @user.forks

  
  
  
end

def create
  post_id = params[:post_id]
  fork = Fork.create(
  user_id: current_user.id,
  post_id: post_id)

    
 redirect_to "/posts"
end

# def show
#     fork_id = params[:id]
#     @fork = Fork.find_by(id: fork_id)
   
  
#     user_id = params[:id]
#     @user = User.find_by(id: user_id)
#     @user = @fork.user
# end

end
