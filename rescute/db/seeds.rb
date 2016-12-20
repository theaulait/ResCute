# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'httparty'

API_KEY = 'XpVSukp'

data = {
  apikey: API_KEY,
  objectType: "animals",
  objectAction: "publicSearch",
  search: {
    resultStart: 0,
    resultLimit: 20,
    resultSort: "animalID",
    resultOrder: "asc",
    calcFoundRows: "Yes",
    filters: [
      {
        fieldName: "animalStatus",
        operation: "equals",
        criteria: "Available",
      },
      {
        fieldName: "animalSpecies",
        operation: "equals",
        criteria: "dog",
      },
      {
        fieldName: "animalLocation",
        operation: "equals",
        criteria: "10010",
      },
      {
        fieldName: "animalLocationDistance",
        operation: "radius",
        criteria: "30",

      },
    ],
    fields: [ "animalID","animalOrgID","animalName","animalBreed", "sex", "animalLocation", "pic1" ]
  }
}

headers = {
  'Content-Type' => 'application/json'
}

response = HTTParty.post 'https://api.rescuegroups.org/http/json',
  headers: headers, body: Hash.from_xml(response).to_json

  @petsStores = data.to_json do |f|
  # @petsStores = JSON.parse(File.read('/Users/MyRiceBowl/Desktop/Code Bridge/General Assembly/wdi/project3/rescute/app/controllers/apidata.json') do |f|
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
