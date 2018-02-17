class ConnectionsController < ApplicationController
  protect_from_forgery with: :exception

  def index
    @connections = Connection.all
  end

  def create
    @user = User.find(params[:id])
    Connection.create(user_id: current_user.id, following_id: @user.id)
    redirect_to "/users/#{params[:id]}"
  end

end
