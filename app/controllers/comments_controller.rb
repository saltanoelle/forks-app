class CommentsController < ApplicationController
  def create
    post_id = params[:post_id]
    comment = Comment.create(
    user_id: current_user.id,
    post_id: post_id,
    body: params[:body])
    redirect_to "/posts/#{post_id}"
  end
end
