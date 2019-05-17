# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new
user.email = 'test@example.com'
user.password = '123456'
user.user_type = 'guest'
user.first_name = 'Don'
user.last_name = 'Murphy'
user.nationality = 'British'
user.age = '99'

user.save!

user = User.new
user.email = 'test2@example.com'
user.password = '123456'
user.user_type = 'owner'
user.first_name = 'Miriam'
user.last_name = 'Kennedy'
user.nationality = 'German'
user.age = '20'

user.save





