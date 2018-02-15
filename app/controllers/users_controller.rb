class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = Post.all
    @likes = Like.all
    @comments = Comment.all
  end
end
