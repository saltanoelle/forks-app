class ForksController < ApplicationController
def index
    user_id = params[:id]
    user = User.find_by(id: user_id)
    @forks = Fork.all
  
  
  
end

def create
  post_id = params[:post_id]
  fork = Fork.create(
  user_id: current_user.id,
  post_id: post_id)

    
 redirect_to "/forks"
end

end
