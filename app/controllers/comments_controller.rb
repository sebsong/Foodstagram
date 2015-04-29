class CommentsController < ApplicationController
    
    def new
        @user = current_user
        # in post @post.comments.build comment_params
        #@comment.user = current_user
        @comment = Comment.new
    end
    
    def create
        if user_signed_in?
            @post = Post.find(params[:post_id])
            @user = current_user
            @comment = Comment.new comment_params
            @comment.user_id = @user.id
            @comment.post_id = params[:post_id]
            if @comment.save
                redirect_to :back
            else
                flash[:error] = @comment.errors.full_messages.to_sentence
                render :action => "new"
            end
        end
    end

    private
    def comment_params
        params.require(:comment).permit(:message)
    end
end
