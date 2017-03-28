class BoardsController < ApplicationController
  
  def new
  end
  
  def create

  board = Board.create(
  user_id: current_user.id,
  name: params[:name])
  redirect_to "/forks/new?post_id=#{params[:post_id]}"
  end


  def show

    @board = Board.find(params[:id])
 

   

  end


end
