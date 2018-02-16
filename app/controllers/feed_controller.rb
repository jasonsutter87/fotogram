class FeedController < ApplicationController
  def index
    @likes = Like.all
    @photos = Photo.all
    @posts = Post.all
    @comments = Comment.all
  end
end
