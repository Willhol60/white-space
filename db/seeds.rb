# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Space.destroy_all
User.destroy_all

testers = [
  { first_name: "Rami", last_name: "Assaf", email: "ramiw.assaf@gmail.com", password: 'password' },
  { first_name: "Simon", last_name: "Foster", email: "simonfos74@gmail.com", password: 'password' },
  { first_name: "Will", last_name: "Holmes", email: "willholmes60@gmail.com", password: 'password' },
  { first_name: "Mark", last_name: "de Courcy Ling", email: "m.decourcyling@gmail.com", password: 'password' },
]

# creating first user and two spaces
rami = User.new(testers[0])
rami.save
face_tat = Space.new(title: 'My face', space_type: 'Tattoo', price: 1000, type_image: "tattoo.jpg", location: 'E1 6EB')
face_tat.user = rami
face_tat.save
car_ad = Space.new(title: 'Post your ad on my car', space_type: 'Car sticker', price: 500, type_image: "car.jpg", location: 'E2 8DY')
car_ad.user = rami
car_ad.save

# creating second user and two spaces
simon = User.new(testers[1])
simon.save
name_change = Space.new(title: 'I will change my name to your brand!', space_type: 'Legal name change', price: 2000, type_image: "name.jpg", location: 'W1U 1BW')
name_change.user = simon
name_change.save

# creating third user and two spaces
will = User.new(testers[2])
will.save
backpack = Space.new(title: 'Stylize my backpack with your ad', space_type: 'Backpack', price: 200, type_image: "backpack.jpg", location: 'WC1E 6JW')
backpack.user = will
backpack.save

# creating last user and two spaces
mark = User.new(testers[3])
mark.save
lawn = Space.new(title: "My lawn is the perfect place for your marketing", space_type: 'Front lawn', price: 500, type_image: "lawn.jpg", location: 'NW6 3BR')
lawn.user = mark
lawn.save
