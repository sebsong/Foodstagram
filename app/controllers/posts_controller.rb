class PostsController < ApplicationController
    def new
        @user = current_user
        @post = @user.post.build
    end

    def create
        @user = current_user
        @post = @user.post.build post_params
        if @post.save
            redirect_to user_path(@user.id)
        else
            flash[:error] = @post.errors.full_messages.to_sentence
            render :action => "new"
        end
    end

    private
    def post_params
        params.require(:post).permit(:caption)
    end
end
