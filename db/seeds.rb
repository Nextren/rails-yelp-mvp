# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
steak_paradise = { name: 'Steak Paradise', address: 'Berlin', phone_number: '2525', category: 'french' }
pizza_west = { name: 'Pizza West', address: 'Hamburg', phone_number: '5252', category: 'italian' }
triangle = { name: 'Triangle', address: 'Munich', phone_number: '7575', category: 'japanese' }
asia_express = { name: 'Asia Express', address: 'Munich', phone_number: '5757', category: 'chinese' }

[steak_paradise, pizza_west, triangle, asia_express].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
