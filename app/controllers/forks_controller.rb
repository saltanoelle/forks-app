class ForksController < ApplicationController
def index
 
    @user = User.find(params[:id])
    @forks = @user.forks
  
  
  
end

def new


  render "forks/new"



end


def create


  board_id = params[:board][:board_id]

  post_id = params[:post_id]
  fork = Fork.create(
  user_id: current_user.id,
  post_id: post_id,
  board_id: board_id)
  redirect_to "users"
end


end
