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

# Create users
puts "Creating 7 users (2 Life Triallers, 5 Celebrities)."

user1 = User.create!(
  first_name: "Life",
  last_name: "Trialler 1",
  email: Faker::Internet.email,
  password: Faker::Internet.password
)

puts "#{user1.first_name} #{user1.last_name} created."

user2 = User.create(
  first_name: "Life",
  last_name: "Trialler 2",
  email: Faker::Internet.email,
  password: Faker::Internet.password
)

puts "#{user2.first_name} #{user2.last_name} created."

user3 = User.create!(
  first_name: "Henry",
  last_name: "VIII",
  email: Faker::Internet.email,
  password: Faker::Internet.password
)

puts "#{user3.first_name} #{user3.last_name} created."

user4 = User.create!(
  first_name: "Neil",
  last_name: "Armstrong",
  email: Faker::Internet.email,
  password: Faker::Internet.password
)

puts "#{user4.first_name} #{user4.last_name} created."

user5 = User.create!(
  first_name: "Christiano",
  last_name: "Ronaldo",
  email: Faker::Internet.email,
  password: Faker::Internet.password
)

puts "#{user5.first_name} #{user5.last_name} created."

user6 = User.create!(
  first_name: "Marilyn",
  last_name: "Monroe",
  email: Faker::Internet.email,
  password: Faker::Internet.password
)

puts "#{user6.first_name} #{user6.last_name} created."

user7 = User.create!(
  first_name: "Dolly",
  last_name: "Parton",
  email: Faker::Internet.email,
  password: Faker::Internet.password
)

puts "#{user7.first_name} #{user7.last_name} created."

# Create listings
puts "Creating LifeTrial listings for Henry VIII"

listing_one = Listing.new(
  title: "A Day on the Throne",
  category: "Royalty",
  price: rand(1..10),
  description: "Come and be me for a day on the throne.",
  user_id: user3.id
)
listing_one.save!

puts "#{user3.first_name} #{user3.last_name}: #{listing_one.title} created."

listing_two = Listing.new(
  title: "A Day at Home with Henry VIII and the Royal Family",
  category: "Royalty",
  price: rand(1..10),
  description: "Come and be me for a day at home with the Royal Family.",
  user_id: user3.id
)
listing_two.save!

puts "#{user3.first_name} #{user3.last_name}: #{listing_two.title} created."

puts "Creating LifeTrial listings for Neil Armstrong"

listing_three = Listing.new(
  title: "A Day on the Moon",
  category: "Record Breakers",
  price: rand(1..10),
  description: "Come and be me for a day on the moon.",
  user_id: user4.id
)
listing_three.save!

puts "#{user4.first_name} #{user4.last_name}: #{listing_three.title} created."

listing_four = Listing.new(
  title: "A Day at Home with Neil Armstrong and his Family",
  category: "Record Breakers",
  price: rand(1..10),
  description: "Come and be me for a day at home with the family.",
  user_id: user4.id
)
listing_four.save!

puts "#{user4.first_name} #{user4.last_name}: #{listing_four.title} created."

puts "Creating LifeTrial listings for Christiano Ronaldo"

listing_five = Listing.new(
  title: "A Day on the Pitch",
  category: "Sports People",
  price: rand(1..10),
  description: "Come and be me for a day on the football pitch.",
  user_id: user5.id
)
listing_five.save!

puts "#{user5.first_name} #{user5.last_name}: #{listing_five.title} created."

listing_six = Listing.new(
  title: "A Day at Home with Christiano Ronaldo and his Family",
  category: "Sports People",
  price: rand(1..10),
  description: "Come and be me for a day at home with the family.",
  user_id: user5.id
)
listing_six.save!

puts "#{user5.first_name} #{user5.last_name}: #{listing_six.title} created."

puts "Creating LifeTrial listings for Marilyn Monroe"

listing_seven = Listing.new(
  title: "A Day on the Film Set",
  category: "Actors",
  price: rand(1..10),
  description: "Come and be me for a day on the film set. I wake up early, eat breakfast with my cats, then have my make-up and hair done - red lips and trademark platinum curls, before arriving on the film set to shoot my latest Hollywood movie. After the morning's filming, I'd go for lunch at my favourite 5* restaurant in Los Angeles, and end the day with a relaxing spa treatment.",
  user_id: user6.id
)
listing_seven.save!

puts "#{user6.first_name} #{user6.last_name}: #{listing_seven.title} created."

listing_eight = Listing.new(
  title: "A Day at Home with Marilyn Monroe and her Family",
  category: "Actors",
  price: rand(1..10),
  description: "Come and be me for a day at home with the family.",
  user_id: user6.id
)
listing_eight.save!

puts "#{user6.first_name} #{user6.last_name}: #{listing_eight.title} created."

puts "Creating LifeTrial listings for Dolly Parton"

listing_nine = Listing.new(
  title: "A '9-5' Day in the Recording Studio",
  category: "Actors",
  price: rand(1..10),
  description: "Come and be me for a day in the recording studio. I usually work '9 to 5' and start the day with breakfast at my favourite Nashville coffee shop, before my chauffeur picks me up to take me to the recording studio. I'd get in the zone by singing a version of 'Jolene' and spend the day jamming out with all my studio musicians. I'd head on to my favourite restaurant and spend the rest of the evening dancing in a country music bar.",
  user_id: user7.id
)
listing_nine.save!

puts "#{user7.first_name} #{user7.last_name}: #{listing_nine.title} created."

listing_ten = Listing.new(
  title: "A Day at Home with Dolly Parton and her Family",
  category: "Actors",
  price: rand(1..10),
  description: "Come and be me for a day at home with the family.",
  user_id: user7.id
)
listing_ten.save!

puts "#{user7.first_name} #{user7.last_name}: #{listing_ten.title} created."

puts 'Finished!'
