# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Service.destroy_all
User.destroy_all

User.create(email: 'blalba@gmail.com', password: '123456', first_name: 'Kanye', last_name: 'West',
  address: '16 villa Gaudelet, 75011', phone_number: '0600000004')

User.create(email: 'zinedinezidane@gmail.com', password: '123456', first_name: 'Zinedie', last_name: 'Zidane',
  address: '110 rue Oberkampf, 75011', phone_number: '0600000006')

User.create(email: 'jayz@gmail.com', password: '123456', first_name: 'Jay', last_name: 'Z',
  address: '1 place de la République, 75011', phone_number: '0600000007')

Service.create!(
  title: 'Electricien paris 4eme',
  specialty: 'Electricien',
  presentation: 'Ultra réactif',
  address: '17 square jean thebaud, 75015',
  user_id: User.first.id
)
