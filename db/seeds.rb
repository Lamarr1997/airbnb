# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
require 'faker'

Faker::Config.locale = 'en'

# user = User.create!(
#   first_name: 'Kodak',
#   last_name: 'Haitian',
#   email: 'Kodak_Haitian@example.com',
#   password: '123456'
# )
# puts "Created user: #{user.first_name}, #{user.last_name} #{user.email}"

50.times do
  Flat.create!(
    name: Faker::Name.name,
    address: Faker::Address.full_address,
    price: Faker::Commerce.price(range: 0..100000.0, as_string: true),
    description: Faker::Lorem.paragraph
  )
end

50.times do
  House.create!(
    name: Faker::Name.name,
    address: Faker::Address.full_address,
    price: Faker::Commerce.price(range: 0..100000.0, as_string: true),
    description: Faker::Lorem.paragraph
  )
end

50.times do
  Hotel.create!(
    name: Faker::Name.name,
    address: Faker::Address.full_address,
    price: Faker::Commerce.price(range: 0..1000.0, as_string: true),
    description: Faker::Lorem.paragraph
  )
end

puts 'flats and user has been created'

puts 'Houses and Hotels created'
