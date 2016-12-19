class StoresController < ApplicationController
    def initialize
    # response = HTTParty.get('apidata.json')
    @petsStores = JSON.parse(File.read('/Users/student_05/Desktop/ResCute/rescute/app/controllers/apidata.json') do |f|
      f.each_line do |line|
        line
      end
    end)
    puts "in initialize"
      @AvaiblePets = @petsStores["pets"]["pet"]
  end

  def index
    @stores = Store.limit(10)
  end
  def show
    @id = params[:id]
    @dog = Store.find(@id)
  end

  def create
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
  redirect_to "/stores"
  end
end








