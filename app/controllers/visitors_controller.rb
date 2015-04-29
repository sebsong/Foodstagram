class VisitorsController < ApplicationController
    def index
        @posts = Post.all.reverse
        @comment = Comment.new
        @comment.user_id = current_user.id
    end
end
