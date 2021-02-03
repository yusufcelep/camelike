class PostsController < ApplicationController

  skip_before_action :authorized, only: [:index]
  before_action :get_post, only: [:edit, :update, :show, :destroy]

  def index
    @posts = Post.all.order("created_at DESC")
    @post = Post.new
  end

  def new
    @post = Post.new
    @errors = flash[:errors]
  end

  def create
    @post = Post.create(user: current_user, location_id: params[:post][:location_id], content: params[:post][:content])
    # byebug
    if @post.valid?
      redirect_to posts_path
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to new_post_path
    end
  end

  def edit
  end

  def update
    @post.update(user: current_user, location_id: params[:post][:location_id], content: params[:post][:content])
    # byebug
    redirect_to post_path(@post.id)
  end

  def show
    @comment = Comment.new
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  def comment
    # byebug
    @comment = Comment.create(user: @current_user, post_id: params[:comment][:post_id], content: params[:comment][:content])
    if @comment.valid?
      redirect_to post_path(@comment.post.id)
    else
      flash[:errors] = @comment.errors.full_messages
    end
  end

  
  private 

  def post_params
    params.require(:post).permit(:user_id, :location_id, :content)
  end

  def get_post 
    @post = Post.find(params[:id])
  end

end
