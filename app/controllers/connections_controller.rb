class ConnectionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @connections = Connection.all
  end

  def create
    Connection.create(
      user_id: params['connection']['user_id'],
      following_id: params['connection']['following_id'])
    redirect_to "/users/#{params['connection']['following_id']}"
  end

  def destroy
    connection = Connection.find_by(
      user_id: current_user.id,
      following_id: params[:id])
    Connection.destroy(connection.id)
    user = User.find(params[:id])

    redirect_to request.referrer
 end

end
