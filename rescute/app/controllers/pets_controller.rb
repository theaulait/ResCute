class PetsController < ApplicationController
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> develop
  def initialize
    # response = HTTParty.get('apidata.json')
    @test = JSON.parse(File.read('/Users/student_03/Desktop/proj3/ResCute/rescute/app/controllers/apidata.json') do |f|
      f.each_line do |line|
        line
      end
    end)
      @AvaiblePets = @test["pets"]["pet"]
    @name = "oet"
    @gender = "m"
    @organisationid = 222222
    @age = 2
    @breed = "ahh"
    @locationzip = 21112
    @user_id = nil

    @name1 = "33333"
    @gender1 = "m"
    @organisationid1 = 222222
    @age1 = 2
    @breed1 = "ahh"
    @locationzip1 = 21112
    @user_id1 = nil
  end
  def index

@AvaiblePets
<<<<<<< HEAD
=======
def index
=======


>>>>>>> develop
  Pet.all
end
def show
@id = params[:id]
 @dog = Pet.find(@id)
<<<<<<< HEAD
>>>>>>> 19e0931656c1e11b33803458843e0f743726ad03
=======

>>>>>>> develop
  end
def create
    @id = params[:id]
    puts "im hreeeeeeeeeeeeeeee"
    pet = Store.find(@id)
    current =  Pet.create(
    name: pet["name"],
    gender: pet["sex"],
    organisationid: pet["orgID"].to_i,
    age: rand(1..3),
    breed: pet["primaryBreed"],
    locationzip: pet["locationZipcode"].to_i,
    image: pet["pic1"],
    user_id: 1 )
redirect_to "/pets/#{current['id']}"
end

end
