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

Booking.all.each do |user|
  booking.destroy
end

guest = User.create!(
  email: 'test@example.com',
  password: '123456',
  user_type: 'guest',
  first_name: 'Don',
  last_name: 'Murphy',
  nationality: 'British',
  age: '99'
)
guest.save!

owner = User.create!(
  email: 'test2@example.com',
  password: '123456',
  user_type: 'owner',
  first_name: 'Miriam',
  last_name: 'Kennedy',
  nationality: 'German',
  age: '20'
)
owner.save!

hostel = Hostel.create!(
  name: "Generator London",
  address: '37 Tavistock Pl, Saint Pancras, London WC1H 9SE',
  city_name: 'London',
  user: owner,
  price: 65,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452477/photo-1488805990569-3c9e1d76d51c_wkrmto.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452509/photo-1489171078254-c3365d6e359f_ncupzf.jpg",
  photo3: "https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80",
)

hostel2 = Hostel.create!(
  name: "Heart of Gold Hostel",
  address: 'Johannisstraße 11, 10117 Berlin, Germany',
  city_name: 'Berlin',
  user: owner,
  price: 50,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452655/photo-1490732239438-ee956a60ed41_hb9sbw.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452594/photo-1488901512066-cd403111aeb2_e1vezt.jpg",
  photo3: "https://images.unsplash.com/photo-1520014384091-f75776a1ca4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=752&q=80",
)

hostel3 = Hostel.create!(
  name: "Generator Berlin Mitte",
  address: 'Oranienburger Str. 65, 10117 Berlin, Germany',
  city_name: 'Berlin',
  user: owner,
  price: 35,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452715/photo-1505576391880-b3f9d713dc4f_rxpe4n.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452759/photo-1520605728164-b6a5c6814203_tz64zy.jpg",
  photo3: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452373/DSC_0231_l7shpy.jpg",
)


hostel4 = Hostel.create!(
  name: "EastSeven Berlin Hostel",
  address: 'Schwedter Str. 7, 10119 Berlin, Germany',
  city_name: 'Berlin',
  user: owner,
  price: 40,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558453009/photo-1504042502815-3d3544395216_zlqggk.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452874/photo-1547473078-cbab237054c0_gqy58a.jpg",
  photo3: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558453055/photo-1495754149474-e54c07932677_g14tvq.jpg",
)

hostel5 = Hostel.create!(
  name: "ClinkNoord",
  address: 'Badhuiskade 3, 1031 KV Amsterdam, Netherlands',
  city_name: 'Amsterdam',
  user: owner,
  price: 55,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452477/photo-1488805990569-3c9e1d76d51c_wkrmto.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452509/photo-1489171078254-c3365d6e359f_ncupzf.jpg",
  photo3: "https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80",
)

hostel6 = Hostel.create!(
  name: "Flying Pig Downtown",
  address: 'Nieuwendijk 100, 1012 MR Amsterdam, Netherlands',
  city_name: 'Amsterdam',
  user: owner,
  price: 24,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452655/photo-1490732239438-ee956a60ed41_hb9sbw.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452594/photo-1488901512066-cd403111aeb2_e1vezt.jpg",
  photo3: "https://images.unsplash.com/photo-1520014384091-f75776a1ca4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=752&q=80",
)

hostel7 = Hostel.create!(
  name: "Hostel Van Gogh",
  address: 'van de Veldestraat 5, 1071 CW Amsterdam, Netherlands',
  city_name: 'Amsterdam',
  user: owner,
  price: 30,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452715/photo-1505576391880-b3f9d713dc4f_rxpe4n.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452759/photo-1520605728164-b6a5c6814203_tz64zy.jpg",
  photo3: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452373/DSC_0231_l7shpy.jpg",
)


hostel8 = Hostel.create!(
  name: "We Love F. Tourists Hostel",
  address: 'R. dos Fanqueiros 267, 1100-230 Lisbon, Portugal',
  city_name: 'Lisbon',
  user: owner,
  price: 18,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558453009/photo-1504042502815-3d3544395216_zlqggk.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452874/photo-1547473078-cbab237054c0_gqy58a.jpg",
  photo3: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558453055/photo-1495754149474-e54c07932677_g14tvq.jpg",
)








