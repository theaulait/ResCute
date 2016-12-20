# rails find the json file in db folder, and populate data
config_path = File.expand_path(File.join(File.dirname(__FILE__), "apidata.json"))
  @petsStores = JSON.parse(File.read(config_path) do |f|
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

