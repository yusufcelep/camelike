class FollowsController < ApplicationController

    def new
        @follow = Follow.new
    end

    def create
        @following_user = User.find(params[:user_id])
        # byebug
        Follow.create(follower_id: @following_user.id, following_id: @current_user.id)
        redirect_to user_path(@following_user.id)
    end

    def destroy
        # byebug
        @unfollowing_user = User.find(params[:id])
        @followship = Follow.find_by(follower_id: @unfollowing_user.id, following_id: @current_user.id)
        @followship.destroy
        redirect_to user_path(@unfollowing_user.id)
    end
    
end
