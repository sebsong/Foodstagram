class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    if user_signed_in?
        @comment = Comment.new
        @comment.user_id = current_user.id
    end
  end

  def create
    @user = User.create( user_params )
  end
  
  private
    # Be sure to update your create() and update() controller methods.
  
  def user_params
    params.require(:user).permit(:avatar)
  end
end
