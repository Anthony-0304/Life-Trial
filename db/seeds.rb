# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Booking.destroy_all
Listing.destroy_all
User.destroy_all

# Create 5 users (2 Customers, 3 Celebs)
user1 = User.create(first_name: "Life", last_name: "Trialler 1")
user2 = User.create(first_name: "Life", last_name: "Trialler 2")

user3 = User.create(first_name: "Henry", last_name: "VIII")
user4 = User.create(first_name: "Neil", last_name: "Armstrong")
user5 = User.create(first_name: "Christiano", last_name: "Ronaldo")
user6 = User.create(first_name: "Marilyn", last_name: "Monroe")
user7 = User.create(first_name: "Dolly", last_name: "Parton")

# Create listings
puts "Creating LifeTrial listings for Henry VIII"
# 2.times do
  listing = Listing.new(
    title: "A Day on the Throne",
    category: "Royalty",
    price: rand(1..10),
    description: "Come and be me for a day on the throne.",
    user: user3.id
  )
  listing.save!
# end

puts "Creating LifeTrial listings for Neil Armstrong"
2.times do
  listing = Listing.new(
    title: ["A Day on the Moon", "A Day at Home"],
    category: "Record Breakers",
    price: rand(1..10),
    description: ["Come and be me for a day on the moon.", "Come and be me for a day at home with the family."],
    user: user4.id
  )
  listing.save!
end

puts "Creating LifeTrial listings for Christiano Ronaldo"
2.times do
  listing = Listing.new(
    title: ["A Day on the Pitch", "A Day at Home"],
    category: "Sports People",
    price: rand(1..10),
    description: ["Come and be me for a day on the football pitch.", "Come and be me for a day at home with the family."],
    user: user5.id
  )
  listing.save!
end

puts "Creating LifeTrial listings for Marilyn Monroe"
2.times do
  listing = Listing.new(
    title: ["A Day on the Film Set", "A Day at Home"],
    category: "Actors",
    price: rand(1..10),
    description: ["Come and be me for a day on the film set. I wake up early, eat breakfast with my cats, then have my make-up and hair done – red lips and trademark platinum curls, before arriving on the film set to shoot my latest Hollywood movie. After the morning’s filming, I’d go for lunch at my favourite 5* restaurant in Los Angeles, and end the day with a relaxing spa treatment.", "Come and be me for a day at home with the family."],
    user: user6.id
  )
  listing.save!
end

puts "Creating LifeTrial listings for Dolly Parton"
2.times do
  listing = Listing.new(
    title: ["A Day in the Recording Studio", "A Day at Home"],
    category: "Musicians",
    price: rand(1..10),
    description: ["Come and be me for a day in the recording studio. I usually work ‘9 to 5’ and start the day with breakfast at my favourite Nashville coffee shop, before my chauffeur picks me up to take me to the recording studio. I’d get in the zone by singing a version of ‘Jolene’ and spend the day jamming out with all my studio musicians. I’d head on to my favourite restaurant and spend the rest of the evening dancing in a country music bar.", "Come and be me for a day at home with the family."],
    user: user7.id
  )
  listing.save!
end

puts 'Finished!'
