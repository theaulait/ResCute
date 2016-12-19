# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@petsStores = JSON.parse(File.read('/Users/student_12/Documents/General_Assembly/codeFolder/myProjectFolder/3rdProject/ResCute/rescute/app/controllers/apidata.json')) do |f|
     f.each_line do |line|
       line
     end
   end
     puts "in initialize"
     @AvaiblePets = @petsStores["pets"]["pet"]

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
