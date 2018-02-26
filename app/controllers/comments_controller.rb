class CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @comments = Comment.all
  end

  def create
    Comment.create(
      post_id: params['comment']['post_id'],
      user_id: params['comment']['user_id'],
      comment: params['comment']['comment'])
    redirect_to request.referrer
  end
end
