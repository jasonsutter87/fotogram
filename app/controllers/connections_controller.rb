class ConnectionsController < ApplicationController
  protect_from_forgery with: :exception

  def index
    @connections = Connection.all
  end

  def cerate
    @user = User.find(params[:id])
    Connection.create(user_id: @user.id, follower_id: current_user.id)
    redirect_to "/users/#{params[:id]}"
  end

end
