class CommentsController < ApplicationController
  before_action :comments_params
  def create
    @comment = Comment.new(comments_params)
  end

  private

  def comments_params
    params.require(:comment).permit(:message)
  end
end