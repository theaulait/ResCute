class PetsController < ApplicationController
def index
  # byebug
  # @current = @current_user
if logged_in?
  @user_dogs = User.find(@current_user)
end
end
def show
@id = params[:id]
@dog = Pet.find(@id)
end

def create
    @id = params[:id][:it]
    @user1 = params[:id][:it2]
    puts "im hreeeeeeeeeeeeeeee"
    @pet = Store.find(@id)
    current =  Pet.create(
    name: @pet["name"],
    gender: @pet["gender"],
    organisationid: @pet["organisationid"].to_i,
    age: rand(1..3),
    breed: @pet["breed"],
    locationzip: @pet["locationzip"].to_i,
    image: @pet["image"],
    user_id: @user1)

redirect_to "/pets/#{current['id']}"
end

def delete
  # get dog id from params (sent by delete form)
  # delete dog where id = id (from params)

end

end
