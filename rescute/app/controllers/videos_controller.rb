class VideosController < ApplicationController
  attr_accessor :vidSearch
  # def initialize
  #   @vidSearchTerm = vidSearch
  # end
  def index

    # @videos = Video.all
    @url = 'tntOCGkgt98'
    if @vidSearch.nil?
    @video = Yt::Video.new url: 'https://www.youtube.com/watch?v=' + @url
    else
    @video = Yt::Video.new url: 'https://www.youtube.com/watch?v=' + @vidSearch
    puts @vidSearch
    end

end

def getter



 # Video.create(url: params[:url])
 #    redirect_to "/videos"
    @vidSearch = params['vidSearch']
    Video.create(url: params[:url])
    @vidData = "https://www.googleapis.com/youtube/v3/search?part=snippet&q=pet%20"+@vidSearch+ "&key=" + ENV["DEVELOPER_KEY"]
    puts @vidData
    @jsonParse = HTTParty.get(@vidData)
    @videoId = @jsonParse['items'][0]['id']['videoId']
    @video = Yt::Video.new url: @videoId
    puts @videoID
@videoID


@vidSearch
@something = {vidUrl: @videoID}
render json: @something
end

  # def new
  #   @video = Video.new

  # end
  # def index
    # Video.create(url: params[:url])
    # redirect_to "/videos"
    # @vidSearch = params['vidSearch']
    #Video.create(url: params[:url])
    # @vidData = "https://www.googleapis.com/youtube/v3/search?part=snippet&q=pet%20"+@vidSearch+ "&key=" + ENV["DEVELOPER_KEY"]
    # puts @vidData
    # @jsonParse = HTTParty.get(@vidData)
    # @videoId = @jsonParse['items'][0]['id']['videoId']
    # @video = Yt::Video.new url: @videoId
    # puts @videoID
# @videoID
# end
#     def search
#       client = Google::APIClient.new(
#         :key => ENV["DEVELOPER_KEY"],
#         :authorization => nil,
#         :application_name => $ResCute,
#         :application_version => '1.0.0'
#       )
#       youtube = client.discovered_api(YOUTUBE_API_SERVICE_NAME, YOUTUBE_API_VERSION)
#       return client, youtube
#     end
#     def main
#       opts = Trollop::options do
#         opt :q, 'Search term', :type => String, :default => 'Google'
#         opt :max_results, 'Max results', :type => :int, :default => 25
#     end
#       client, youtube = get_service

#   begin
#     # Call the search.list method to retrieve results matching the specified query term.
#     search_response = client.execute!(
#       :api_method => youtube.search.list,
#       :parameters => {
#         :part => 'snippet',
#         :q => opts[:q],
#         # :maxResults => opts[:max_results]
#       }
#     )
#     videos = []

#     search_response.data.items.each do |search_result|
#       case search_result.id.kind
#         when 'youtube#video'
#           videos << "#{search_result.snippet.title} (#{search_result.id.videoId})"
#         # when 'youtube#channel'
#       end
#     end
#     puts "Videos:\n", videos, "\n"
#     # puts "Channels:\n", channels, "\n"
#     # puts "Playlists:\n", playlists, "\n"
#   rescue Google::APIClient::TransmissionError => e
#     puts e.result.body
#   end
# end
#   end

  end
# end
