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
  email: 'henry@test.com',
  password: '123456'
)

puts "#{user3.first_name} #{user3.last_name} created."

user4 = User.create!(
  first_name: "Neil",
  last_name: "Armstrong",
  email: 'neil@test.com',
  password: '123456'
)

puts "#{user4.first_name} #{user4.last_name} created."

user5 = User.create!(
  first_name: "Cristiano",
  last_name: "Ronaldo",
  email: 'cristiano@test.com',
  password: '123456'
)

puts "#{user5.first_name} #{user5.last_name} created."

user6 = User.create!(
  first_name: "Marilyn",
  last_name: "Monroe",
  email: 'marilyn@test.com',
  password: '123456'
)

puts "#{user6.first_name} #{user6.last_name} created."

user7 = User.create!(
  first_name: "Dolly",
  last_name: "Parton",
  email: 'dolly@test.com',
  password: '123456'
)

puts "#{user7.first_name} #{user7.last_name} created."

user8 = User.create!(
  first_name: "Brad",
  last_name: "Pitt",
  email: 'brad@test.com',
  password: '123456'
)

puts "#{user8.first_name} #{user8.last_name} created."

# Create listings
puts "Creating LifeTrial listings for Henry VIII"

listing_one = Listing.new(
  title: "HENRY VIII: ON THE THRONE RULING THE COUNTRY",
  category: "Royalty",
  price: rand(100..999),
  description: "Come and be me for a day on the throne. I wake up early in the morning. I start my day by going to the chapel and praying, and then eating a light meal. Throughout the day, I would sit on my throne, attend meetings, discuss laws to be passed, hear petitions and so on. Around midday, I will attend dinner, which consisted of many different courses. After dinner, I am free to do whatever I please. I sometimes go out and hunt with my dogs. Near the end of the day, I would eat supper, a lighter meal than dinner. My wife and I would say our prayers, and then go to sleep. We have many servants to take care of us throughout the day.",
  user_id: user3.id
)
file_one = URI.open("https://cdn.creatureandcoagency.com/uploads/2017/06/Henry-VIII-facts-10.jpg")
listing_one.photos.attach(io: file_one, filename: "#{file_one}.png", content_type: "image/png")
listing_one.save!

puts "#{user3.first_name} #{user3.last_name}: #{listing_one.title} created."

listing_two = Listing.new(
  title: "HENRY VIII: AT HOME WITH HIS 6 WIVES",
  category: "Royalty",
  price: rand(100..999),
  description: "Come and be me for a day at home with my six wives.",
  user_id: user3.id
)
file_two = URI.open("http://images.summitmedia-digital.com/esquiremagph/images/gallery/2634/MAINKINGHENRYVIIIWIVES_main.jpg")
listing_two.photos.attach(io: file_two, filename: "#{file_two}.png", content_type: "image/png")
listing_two.save!

puts "#{user3.first_name} #{user3.last_name}: #{listing_two.title} created."

puts "Creating LifeTrial listings for Neil Armstrong"

listing_three = Listing.new(
  title: "NEIL ARMSTRONG: ON THE MOON",
  category: "Record Breakers",
  price: rand(100..999),
  description: "Come and be me for a day on the moon.",
  user_id: user4.id
)
file_three = URI.open("https://www.mashed.com/img/gallery/the-first-astronaut-to-bring-chocolate-into-space/l-intro-1666923799.jpg")
listing_three.photos.attach(io: file_three, filename: "#{file_three}.png", content_type: "image/png")
listing_three.save!

puts "#{user4.first_name} #{user4.last_name}: #{listing_three.title} created."

listing_four = Listing.new(
  title: "NEIL ARMSTRONG: AT HOME WITH HIS FAMILY",
  category: "Record Breakers",
  price: rand(100..999),
  description: "Come and be me for a day at home with the family.",
  user_id: user4.id
)
file_four = URI.open("https://i2-prod.mirror.co.uk/incoming/article17797870.ece/ALTERNATES/s1200d/1_Astronaut-Neil-Armstrong.jpg")
listing_four.photos.attach(io: file_four, filename: "#{file_four}.png", content_type: "image/png")
listing_four.save!

puts "#{user4.first_name} #{user4.last_name}: #{listing_four.title} created."

puts "Creating LifeTrial listings for Cristiano Ronaldo"

listing_five = Listing.new(
  title: "CRISTIANO RONALDO: ON THE FOOTBALL PITCH",
  category: "Sports People",
  price: rand(100..999),
  description: "Come and be me for a day on the football pitch.",
  user_id: user5.id
)
file_five = URI.open("https://e0.365dm.com/22/07/2048x1152/skysports-cristiano-ronaldo_5823297.jpg")
listing_five.photos.attach(io: file_five, filename: "#{file_five}.png", content_type: "image/png")
listing_five.save!

puts "#{user5.first_name} #{user5.last_name}: #{listing_five.title} created."

listing_six = Listing.new(
  title: "CRISTIANO RONALDO: AT HOME WITH HIS FAMILY",
  category: "Sports People",
  price: rand(100..999),
  description: "Come and be me for a day at home with the family.",
  user_id: user5.id
)
file_six = URI.open("https://www.thetechoutlook.com/wp-content/uploads/2022/06/Untitled-design-5-22.jpg")
listing_six.photos.attach(io: file_six, filename: "#{file_six}.png", content_type: "image/png")
listing_six.save!

puts "#{user5.first_name} #{user5.last_name}: #{listing_six.title} created."

puts "Creating LifeTrial listings for Marilyn Monroe"

listing_seven = Listing.new(
  title: "MARILYN MONROE: ON A HOLLYWOOD FILM SET",
  category: "Actors & Actresses",
  price: rand(100..999),
  description: "Come and be me for a day on the film set. I wake up early, eat breakfast with my cats, then have my make-up and hair done - red lips and trademark platinum curls, before arriving on the film set to shoot my latest Hollywood movie. After the morning's filming, I'd go for lunch at my favourite 5* restaurant in Los Angeles, and end the day with a relaxing spa treatment.",
  user_id: user6.id
)
file_seven = URI.open("https://hips.hearstapps.com/hbz.h-cdn.co/assets/16/15/1460562624-hbz-marilyn-monroe-on-set-gettyimages-504804516-index.jpg")
listing_seven.photos.attach(io: file_seven, filename: "#{file_seven}.png", content_type: "image/png")
listing_seven.save!

puts "#{user6.first_name} #{user6.last_name}: #{listing_seven.title} created."

listing_eight = Listing.new(
  title: "MARILYN MONROE: AT HOME WITH HER FAMILY",
  category: "Actors & Actresses",
  price: rand(100..999),
  description: "Come and be me for a day at home with the family.",
  user_id: user6.id
)
file_eight = URI.open("https://www.history.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTY1ODkxNzE2MjEyMDczNTM5/tdih-marilyn-monroe-gettyimages-53376357.jpg")
listing_eight.photos.attach(io: file_eight, filename: "#{file_eight}.png", content_type: "image/png")
listing_eight.save!

puts "#{user6.first_name} #{user6.last_name}: #{listing_eight.title} created."

puts "Creating LifeTrial listings for Dolly Parton"

listing_nine = Listing.new(
  title: "DOLLY PARTON: WORKIN' '9-5' IN THE RECORDING STUDIO",
  category: "Musicians",
  price: rand(100..999),
  description: "Tumble out of bed...and stumble to the kitchen. Pour myself a cup of ambition...and yawn and stretch and try to come to life. Jump in the shower...and the blood starts pumpin'. Out on the streets, the traffic starts jumpin'. For folks like me on the job from 9 to 5. Workin' 9 to 5. What a way to make a livin'. Barely gettin' by. It's all takin' and no givin'. They just use your mind. And they never give you credit. It's enough to drive you. Crazy if you let it. 9 to 5. For service and devotion. You would think that I would deserve a fat promotion.",
  user_id: user7.id
)
file_nine = URI.open("https://www.dollymania.net/Dolly_Parton_Pirates_Voyage_Soundtrack_Large.jpg")
listing_nine.photos.attach(io: file_nine, filename: "#{file_nine}.png", content_type: "image/png")
listing_nine.save!

puts "#{user7.first_name} #{user7.last_name}: #{listing_nine.title} created."

listing_ten = Listing.new(
  title: "DOLLY PARTON: AT HOME WITH CARL THOMAS DEAN",
  category: "Musicians",
  price: rand(100..999),
  description: "Come and be me for a day at home with my husband of over 50 years!",
  user_id: user7.id
)
file_ten = URI.open("https://nypost.com/wp-content/uploads/sites/2/2022/01/newspress-collage-21001067-1643364006345.png")
listing_ten.photos.attach(io: file_ten, filename: "#{file_ten}.png", content_type: "image/png")
listing_ten.save!

puts "#{user7.first_name} #{user7.last_name}: #{listing_ten.title} created."

puts "Creating LifeTrial listings for Dolly Parton"

listing_eleven = Listing.new(
  title: "BRAD PITT: A DAY IN THE ACTION MOVIE 'TROY'",
  category: "Actors & Actresses",
  price: rand(100..999),
  description: "Come and be me for a day in the action movie 'Troy'.",
  user_id: user8.id
)
file_eleven = URI.open("https://www.slashfilm.com/img/gallery/brad-pitt-isnt-exactly-proud-of-his-performance-in-troy/l-intro-1654727045.jpg")
listing_eleven.photos.attach(io: file_eleven, filename: "#{file_nine}.png", content_type: "image/png")
listing_eleven.save!

puts "#{user8.first_name} #{user8.last_name}: #{listing_eleven.title} created."

listing_twelve = Listing.new(
  title: "BRAD PITT: AT HOME IN DOMESTIC BLISS",
  category: "Actors & Actresses",
  price: rand(100..999),
  description: "Come and be me for a day at home with my adopted kids.",
  user_id: user8.id
)
file_twelve = URI.open("https://imgnew.outlookindia.com/public/uploads/articles/2021/12/9/Brad_Pitt_Wants_Him_And_Angelina_Jolie_To_Forgive_Each_Other_And_Move%C2%A0Forward_For_The_Sake_Of_Their_Children.jpg")
listing_twelve.photos.attach(io: file_twelve, filename: "#{file_ten}.png", content_type: "image/png")
listing_twelve.save!

puts "#{user8.first_name} #{user8.last_name}: #{listing_twelve.title} created."

puts 'Finished!'
