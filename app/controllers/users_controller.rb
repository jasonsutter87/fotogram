class UsersController < ApplicationController
  def index
    @posts = Post.all
    @likes = Like.all
    @comments = Comment.all
    @connections = Connection.all
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.all
    @likes = Like.all
    @comments = Comment.all
    @connections = Connection.all
  end
end
