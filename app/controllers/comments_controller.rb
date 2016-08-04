class CommentsController < ApplicationController
  def create
    @comment = Comment.create(text: params[:text], article_id: params[:cycle_id], user_id: current_user.id)
    redirect_to "/cycle/#{@comment.article.id}"
end

  private
  def comment_params
    params.permit(:text, :cycle_id)
  end
end
