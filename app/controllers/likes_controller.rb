class LikesController < ApplicationController

    def new
        @like = Like.new
    end

    def create
        like = Like.create(user_id: @current_user.id, post_id: params[:post_id])
        redirect_to post_path(like.post_id)
    end

    def destroy
        @unliking_post = Post.find(params[:id])
        @like_ship = Like.find_by(user_id: @current_user.id, post_id: @unliking_post.id)
        # byebug
        @like_ship.delete
        redirect_to post_path(@unliking_post.id)
    end
    
end
