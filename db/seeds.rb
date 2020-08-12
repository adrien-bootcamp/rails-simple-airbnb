# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Creating 4 flats"

4.times do
  new_flat = Flat.new(name: Faker::Name.name, address: Faker::Address.full_address, description: Faker::Lorem.paragraph(sentence_count: 5), price_per_night: rand(200), number_of_guests: rand(6))
  new_flat.save!
end

puts "Done!"
