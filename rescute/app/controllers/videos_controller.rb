class VideosController < ApplicationController

  def index
    @videos = Video.all
    @video = Yt::Video.new url:
  end
  def create
    Video.create(url: params[:url])
    redirect_to "/videos"
end


