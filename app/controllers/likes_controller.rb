class LikesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @likes = Like.all
  end

  def create
    Like.create(
      post_id: params['like']['post_id'],
      user_id: params['like']['user_id'])
    redirect_to "/feed"
  end
end
