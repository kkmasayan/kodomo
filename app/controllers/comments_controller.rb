class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_back(fallback_location: root_path)
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, diary_id: params[:diary_id])
  end
end
