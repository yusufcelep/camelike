class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def new
    # don't need anything in here, cause we're not setting up a
    # blank model to couple with the form
    @errors = flash[:errors]
  end
  
  def create
    # no strong params cause there is no mass assignment
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      # byebug
      redirect_to posts_path
    else
      flash[:errors] = "Invalid username or password"
      # byebug
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id) # or session[:user_id] = nil
    @current_user = nil
    redirect_to root_path
  end
  
end
