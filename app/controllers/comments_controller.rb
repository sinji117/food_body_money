class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    @food = Food.find(params[:food_id])
    redirect_to food_path(@food.id)
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, food_id: params[:food_id])
  end
end
