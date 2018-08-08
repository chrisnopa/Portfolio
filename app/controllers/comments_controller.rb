class CommentsController < ApplicationController


  def create
    @comment = current_user.comments.build(comments_params)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
