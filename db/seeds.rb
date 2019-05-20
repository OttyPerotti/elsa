# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all

Hostel.all.each do |hostel|
  hostel.destroy
end

User.all.each do |user|
  user.destroy
end

user = User.create!(
  email: 'test@example.com',
  password: '123456',
  user_type: 'guest',
  first_name: 'Don',
  last_name: 'Murphy',
  nationality: 'British',
  age: '99'
)

user.save!

user1 = User.create!(
  email: 'test2@example.com',
  password: '123456',
  user_type: 'owner',
  first_name: 'Miriam',
  last_name: 'Kennedy',
  nationality: 'German',
  age: '20',
)
user1.save!

hostel = Hostel.create!(
  name: "Under The Dragon's Balls - Hostel",
  address: 'Dragon Lane',
  city_name: 'Le Wagonia',
  user: user,
)

hostel2 = Hostel.create!(
  name: "Hakuna Matata - Hostel",
  address: 'The Savanah',
  city_name: 'Le Wagonish',
  user: user1,
)

booking = Booking.create!(
  nights: 2,
  user: user,
  hostel: hostel,
)
booking.save!






