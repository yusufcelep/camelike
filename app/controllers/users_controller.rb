class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  before_action :get_user, only: [:edit, :update, :show]

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @errors = flash[:errors]
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to posts_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def edit
    @errors = flash[:errors]
  end

  def update
    byebug
    # if @user.valid?
      @user.update(user_params)
      redirect_to user_path(@user.id)
    # else
    #   flash[:errors] = @user.errors.full_messages
    #   byebug
    #   redirect_to edit_user_path
    # end
  end

  def show
    # @unfollowing_user = User.find(params[:id])
    # byebug
  end

  private 

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :username, :password, :bio)
  end

end
