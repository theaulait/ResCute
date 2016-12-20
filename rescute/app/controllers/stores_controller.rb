class StoresController < ApplicationController

  def index
    @stores = Store.limit(20)
  end
  def show
    @id = params[:id]
    @dog = Store.find(@id)
  end

  # def create
  #   puts "in create"
  #   pet = Store.find(params[:id])
  #   Store.create(status: "Available",
  #   name: pet["name"],
  #   gender: pet["sex"],
  #   organisationid: pet["orgID"].to_i,
  #   age: rand(1..3),
  #   breed: pet["primaryBreed"],
  #   locationzip: pet["locationZipcode"].to_i,
  #   image: pet["pic1"] )
  # redirect_to "/stores/#{pet['id']}"
  # end

end









