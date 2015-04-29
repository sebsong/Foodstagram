class CommentsController < ApplicationController
    
    def new
        @user = current_user
        # in post @post.comments.build comment_params
        #@comment.user = current_user
        @comment = Comment.new
    end
    
    def create
        @user = current_user
        #@post = 
        @comment = Comment.new
        if @comment.save
            redirect_to user_path(@user.id)
        else
            flash[:error] = @comment.errors.full_messages.to_sentence
            render :action => "new"
        end
    end

    private
    def comment_params
        params.require(:comment).permit(:message)
    end
end
