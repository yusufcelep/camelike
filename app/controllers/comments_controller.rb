class CommentsController < ApplicationController

  before_action :get_comment, only: [:destroy]

  def new
    # byebug
    @comment = Comment.new
    @errors = flash[:errors]
  end

  def create
    # byebug
    @comment = Comment.create(user_id: current_user, post_id: params[:post_id], content: params[:content])
    if @comment.valid?
      redirect_to post_path(@comment.post.id)
    else
      flash[:errors] = @comment.errors.full_messages
      redirect_to new_comment_path
    end
  end

  def destroy
    @comment.destroy
    redirect_to post_path(@comment.post.id)
  end

  private 

  def get_comment
    @comment = Comment.find(params[:id])
  end

  def comments_params
    params.require(:comment).permit(:user_id, :post_id, :content)
  end

end
