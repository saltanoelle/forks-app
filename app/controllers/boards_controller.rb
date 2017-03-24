class BoardsController < ApplicationController
  
  def new
  end
  
  def create
  board = Board.create(
  user_id: current_user.id,
  name: params[:name])
  end

  def show
    @board = Board.find(params[:id])


  end


end
