# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< HEAD
user = User.create(login: 'admin', admin: true, password: '12345', password_confirmation: '12345')
=======
user = User.create(login: 'admin', admin: true, password: 'Zie4bahj', password_confirmation: 'Zie4bahj')
>>>>>>> 8fc1cac6981a6555b3593dd3df48144c9e428d5e
100.times do
  Post.create(title: Faker::Lorem.sentence,
              user: user,
              body: Faker::Lorem.paragraph)
end
