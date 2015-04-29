class VisitorsController < ApplicationController
    def index
        if user_signed_in?
            @posts = Post.all.reverse
            @comment = Comment.new
            @comment.user_id = current_user.id
        end
    end
end
