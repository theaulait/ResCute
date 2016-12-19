class PetsController < ApplicationController

def show
@id = params[:id]
@dog = Pet.find(@id)
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
