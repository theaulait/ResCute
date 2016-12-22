# config_path = File.expand_path(File.join(File.dirname(__FILE__), "apidata.json"))
# @petsStores = JSON.parse(File.read(config_path) do |f|
#   f.each_line do |line|
#     line
#   end
# end)
# # response = HTTParty.get('https://api.rescuegroups.org/rest/?key=' + ENV['RESCUEGROUPS_KEY'] + '&type=animals&species=Dog&limit=100')
# # render JSON: => response
#   # testing --> puts "in initialize"
# # getting pets from json
# @AvaiblePets = @petsStores["pets"]["pet"]
#   # testing -->puts "in create"
# # putting each pet's data into the database
# @AvaiblePets.each do |pet|
#   Store.create(status: "Available",
#   name: pet["name"],
#   gender: pet["sex"],
#   organisationid: pet["orgID"].to_i,
#   age: rand(1..3),
#   breed: pet["primaryBreed"],
#   locationzip: pet["locationZipcode"].to_i,
#   image: pet["pic1"] )
# end

