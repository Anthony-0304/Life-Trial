# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"
require "open-uri"

Booking.destroy_all
Listing.destroy_all
User.destroy_all

# Create users
puts "Creating 7 users (2 Life Triallers, 5 Celebrities)."

user1 = User.create!(
  first_name: "Rishi",
  last_name: "Sunak",
  email: 'rishi@test.com',
  password: '123456'
)

puts "#{user1.first_name} #{user1.last_name} created."

user2 = User.create(
  first_name: "Life",
  last_name: "Trialler 2",
  email: 'test2@test.com',
  password: '123456'
)

puts "#{user2.first_name} #{user2.last_name} created."

user3 = User.create!(
  first_name: "Henry",
  last_name: "VIII",
  email: Faker::Internet.email,
  password: '123456'
)

puts "#{user3.first_name} #{user3.last_name} created."

user4 = User.create!(
  first_name: "Neil",
  last_name: "Armstrong",
  email: Faker::Internet.email,
  password: '123456'
)

puts "#{user4.first_name} #{user4.last_name} created."

user5 = User.create!(
  first_name: "Christiano",
  last_name: "Ronaldo",
  email: Faker::Internet.email,
  password: '123456'
)

puts "#{user5.first_name} #{user5.last_name} created."

user6 = User.create!(
  first_name: "Marilyn",
  last_name: "Monroe",
  email: Faker::Internet.email,
  password: '123456'
)

puts "#{user6.first_name} #{user6.last_name} created."

user7 = User.create!(
  first_name: "Dolly",
  last_name: "Parton",
  email: Faker::Internet.email,
  password: '123456'
)

puts "#{user7.first_name} #{user7.last_name} created."

# Create listings
puts "Creating LifeTrial listings for Henry VIII"

listing_one = Listing.new(
  title: "A day on the Throne with Henry VIII",
  category: "Royalty",
  price: rand(1..100),
  description: "Come and be me for a day on the throne.",
  user_id: user3.id
)
file_one = URI.open("https://www.discoverbritainmag.com/wp-content/uploads/2017/08/CROP-HENRY.jpg")
listing_one.photos.attach(io: file_one, filename: "#{file_one}.png", content_type: "image/png")
listing_one.save!

puts "#{user3.first_name} #{user3.last_name}: #{listing_one.title} created."

listing_two = Listing.new(
  title: "A day at home with Henry VIII and his six wives",
  category: "Royalty",
  price: rand(1..100),
  description: "Come and be me for a day at home with my six wives.",
  user_id: user3.id
)
file_two = URI.open("http://images.summitmedia-digital.com/esquiremagph/images/gallery/2634/MAINKINGHENRYVIIIWIVES_main.jpg")
listing_two.photos.attach(io: file_two, filename: "#{file_two}.png", content_type: "image/png")
listing_two.save!

puts "#{user3.first_name} #{user3.last_name}: #{listing_two.title} created."

puts "Creating LifeTrial listings for Neil Armstrong"

listing_three = Listing.new(
  title: "A day on the Moon with Neil Armstrong",
  category: "Record Breakers",
  price: rand(1..100),
  description: "Come and be me for a day on the moon.",
  user_id: user4.id
)
file_three = URI.open("https://www.mashed.com/img/gallery/the-first-astronaut-to-bring-chocolate-into-space/l-intro-1666923799.jpg")
listing_three.photos.attach(io: file_three, filename: "#{file_three}.png", content_type: "image/png")
listing_three.save!

puts "#{user4.first_name} #{user4.last_name}: #{listing_three.title} created."

listing_four = Listing.new(
  title: "A day at home with Neil Armstrong and his family",
  category: "Record Breakers",
  price: rand(1..100),
  description: "Come and be me for a day at home with the family.",
  user_id: user4.id
)
file_four = URI.open("https://i2-prod.mirror.co.uk/incoming/article17797870.ece/ALTERNATES/s1200d/1_Astronaut-Neil-Armstrong.jpg")
listing_four.photos.attach(io: file_four, filename: "#{file_four}.png", content_type: "image/png")
listing_four.save!

puts "#{user4.first_name} #{user4.last_name}: #{listing_four.title} created."

puts "Creating LifeTrial listings for Cristiano Ronaldo"

listing_five = Listing.new(
  title: "A day on the Football Pitch with Cristiano Ronaldo",
  category: "Sports People",
  price: rand(1..100),
  description: "Come and be me for a day on the football pitch.",
  user_id: user5.id
)
file_five = URI.open("https://e0.365dm.com/22/07/2048x1152/skysports-cristiano-ronaldo_5823297.jpg")
listing_five.photos.attach(io: file_five, filename: "#{file_five}.png", content_type: "image/png")
listing_five.save!

puts "#{user5.first_name} #{user5.last_name}: #{listing_five.title} created."

listing_six = Listing.new(
  title: "A day at home with Cristiano Ronaldo and his family",
  category: "Sports People",
  price: rand(1..100),
  description: "Come and be me for a day at home with the family.",
  user_id: user5.id
)
file_six = URI.open("https://static.dw.com/image/64258094_605.jpg")
listing_six.photos.attach(io: file_six, filename: "#{file_six}.png", content_type: "image/png")
listing_six.save!

puts "#{user5.first_name} #{user5.last_name}: #{listing_six.title} created."

puts "Creating LifeTrial listings for Marilyn Monroe"

listing_seven = Listing.new(
  title: "A day on the Hollywood Film Set with Marilyn Monroe",
  category: "Actors & Actresses",
  price: rand(1..100),
  description: "Come and be me for a day on the film set. I wake up early, eat breakfast with my cats, then have my make-up and hair done - red lips and trademark platinum curls, before arriving on the film set to shoot my latest Hollywood movie. After the morning's filming, I'd go for lunch at my favourite 5* restaurant in Los Angeles, and end the day with a relaxing spa treatment.",
  user_id: user6.id
)
file_seven = URI.open("https://hips.hearstapps.com/hbz.h-cdn.co/assets/16/15/1460562624-hbz-marilyn-monroe-on-set-gettyimages-504804516-index.jpg")
listing_seven.photos.attach(io: file_seven, filename: "#{file_seven}.png", content_type: "image/png")
listing_seven.save!

puts "#{user6.first_name} #{user6.last_name}: #{listing_seven.title} created."

listing_eight = Listing.new(
  title: "A day at home with Marilyn Monroe and her family",
  category: "Actors & Actresses",
  price: rand(1..100),
  description: "Come and be me for a day at home with the family.",
  user_id: user6.id
)
file_eight = URI.open("https://www.history.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTY1ODkxNzE2MjEyMDczNTM5/tdih-marilyn-monroe-gettyimages-53376357.jpg")
listing_eight.photos.attach(io: file_eight, filename: "#{file_eight}.png", content_type: "image/png")
listing_eight.save!

puts "#{user6.first_name} #{user6.last_name}: #{listing_eight.title} created."

puts "Creating LifeTrial listings for Dolly Parton"

listing_nine = Listing.new(
  title: "A '9-5' day in the Recording Studio with Dolly Parton",
  category: "Musicians",
  price: rand(1..100),
  description: "Come and be me for a day in the recording studio. I usually work '9 to 5' and start the day with breakfast at my favourite Nashville coffee shop, before my chauffeur picks me up to take me to the recording studio. I'd get in the zone by singing a version of 'Jolene' and spend the day jamming out with all my studio musicians. I'd head on to my favourite restaurant and spend the rest of the evening dancing in a country music bar.",
  user_id: user7.id
)
file_nine = URI.open("https://www.dollymania.net/Dolly_Parton_Pirates_Voyage_Soundtrack_Large.jpg")
listing_nine.photos.attach(io: file_nine, filename: "#{file_nine}.png", content_type: "image/png")
listing_nine.save!

puts "#{user7.first_name} #{user7.last_name}: #{listing_nine.title} created."

listing_ten = Listing.new(
  title: "A day at home with Dolly Parton and her family",
  category: "Musicians",
  price: rand(1..100),
  description: "Come and be me for a day at home with the family.",
  user_id: user7.id
)
file_ten = URI.open("https://images.squarespace-cdn.com/content/v1/5a77442b29f187714050c37c/1536711590158-WGGIU8539D3VA6U8E8VB/Young-Dolly-Parton+copy.jpg?format=1500w")
listing_ten.photos.attach(io: file_ten, filename: "#{file_ten}.png", content_type: "image/png")
listing_ten.save!

puts "#{user7.first_name} #{user7.last_name}: #{listing_ten.title} created."

puts 'Finished!'
