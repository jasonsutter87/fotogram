class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @likes = Like.all
    @photos = Photo.all
    @posts = Post.all
    @comments = Comment.all
  end
end
