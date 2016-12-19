class PetsController < ApplicationController
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
# @test = File.read('/Users/student_02/Desktop/GA_Assign/rescute/app/controllers/apidata.json')

@AvaiblePets
  end
  def show
    @id = params[:id]
    @dog = Pet.find_by(id: @id)
  end
  def create

    # puts dog
    puts "im hereeeeeeeeeeeeeeeeeeeeeee"
    # @us = User.find(1)
    # @us.pets << dog
    dog = trans
    Pet.create(name: dog['name'],
      gender: dog['gender'],
      organisationid: dog['organisationid'],
      age: dog['age'],
      breed: dog['breed'],
      locationzip: dog['locationzip'],
      user_id: 1)

  end
  def dogdata
    @currentdog = []
   @currentdog.push(Pet.new(name: @name,
      gender: @gender,
      organisationid: @organisationid,
      age: @age,
      breed: @breed,
      locationzip: @locationzip,
      user_id: @user_id))
   @currentdog.push(Pet.new(name: @name1,
      gender: @gender1,
      organisationid: @organisationid1,
      age: @age1,
      breed: @breed1,
      locationzip: @locationzip1,
      user_id: @user_id1))
      puts "this is what you should look for #{}"
    @currentdog
     end
end
