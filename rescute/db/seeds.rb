# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


   @petsStores = JSON.parse(File.read('/Users/MyRiceBowl/Desktop/Code Bridge/General Assembly/wdi/project3/rescute/app/controllers/apidata.json') do |f|
      f.each_line do |line|
        line
      end
    end)

    puts "in initialize"
      @AvaiblePets = @petsStores["pets"]["pet"]


    puts "in create"

    @AvaiblePets.each do |pet|
    Store.create(status: "Available",
    name: pet["name"],
    gender: pet["sex"],
    organisationid: pet["orgID"].to_i,
    age: rand(1..3),
    breed: pet["primaryBreed"],
    locationzip: pet["locationZipcode"].to_i,
    image: pet["pic1"] )
  end

  # Video.create(url: params[:url])
    # redirect_to "/videos"
    @vidSearch = params['vidSearch']
    #Video.create(url: params[:url])
    @vidData = "https://www.googleapis.com/youtube/v3/search?part=snippet&q=pet%20"+@vidSearch+ "&key=" + ENV["DEVELOPER_KEY"]
    puts @vidData
    @jsonParse = HTTParty.get(@vidData)
    @videoId = @jsonParse['items'][0]['id']['videoId']
    # @video = Yt::Video.new url: @videoId
    puts @videoID
@videoID

Video.create(name: "name" , url: @videoId )
