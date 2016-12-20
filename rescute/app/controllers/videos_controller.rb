class VideosController < ApplicationController
  skip_before_action :verify_authenticity_token
  attr_accessor :vidSearch

  # def initialize
  #   @vidSearchTerm = vidSearch
  # end
  def index
    @videos = ""
    @url = 'ilMzs1UHEmw'
    if @vidSearch.nil?
    @video = Yt::Video.new url: 'https://www.youtube.com/watch?v=' + @url
    else
    @video = Yt::Video.new url: 'https://www.youtube.com/watch?v=' + @vidSearch
    puts @vidSearch
    end
  end

  def getter
    #gets data from from form
    @vidSearch = params[:search]
    #passes info into the youtube api link
    @vidData = "https://www.googleapis.com/youtube/v3/search?part=snippet&q=pet%20"+ @vidSearch + "&key=" + ENV["DEVELOPER_KEY"]
    #gets gets json data from api link
    @jsonParse = HTTParty.get(@vidData)
    #gets the first video description
    @description = @jsonParse["items"][4]["snippet"]["description"]
    #gets the first url id
    @videoId = @jsonParse['items'][0]['id']['videoId']
    # @something = {vidUrl: @vidData}
    render :template => "videos/index"

  end
end

