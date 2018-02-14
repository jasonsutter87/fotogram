class FeedsController < ApplicationController
  def index
    @likes = Like.all
    @posts = Post.all
    @comments = Comment.all
  end
end
