class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end


  def create
    Photo.create(url: params[:url])
    redirect_to "/feed"
  end

end
