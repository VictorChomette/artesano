# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Intervention.destroy_all
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
  specialty: 'Eléctricien',
  presentation: 'Ultra réactif, même le weekend. Prix avantageux sur tout Paris centre!',
  address: '17 square jean thebaud, 75015',
  user_id: User.first.id
)

Service.create!(
  title: 'Electricien Paris 19eme',
  specialty: 'Eléctricien',
  presentation: 'Disponible dans Paris et ses allentours du lundi au vendredi, de 8h à 20h.',
  address: '13 Rue Georges Auric, 75019',
  user_id: User.first.id
)

Service.create!(
  title: 'Electricien Paris 16eme',
  specialty: 'Eléctricien',
  presentation: 'Situé au centre du 16eme arrondissement de Paris, proposant un service de qualité et réactif. Disponible 7j/7 sauf jour férié.',
  address: '80 avenue mozart, 75016',
  user_id: User.first.id
)

Service.create!(
  title: 'Plombier Paris 17eme',
  specialty: 'Plombier',
  presentation: "Service de plomberie disponible 7j/7, 24h/24 en plein centre de Paris. ",
  address: '23 Bd Gouvion-Saint-Cyr, 75017 Paris',
  user_id: User.first.id
)

Service.create!(
  title: 'Plombier Paris 20eme',
  specialty: 'Plombier',
  presentation: "Artisan plombier de qualité pour réparer vos dégats des eaux !",
  address: '94-102 Rue de Buzenval, 75020 Paris',
  user_id: User.first.id
)

Service.create!(
  title: 'Plombier Paris 1er',
  specialty: 'Plombier',
  presentation: "Disponible dans le centre de Paris du lundi au vendredi.",
  address: '2-10 Rue du 29 Juillet, 75001 Paris',
  user_id: User.first.id
)

Service.create!(
  title: 'Peintre Paris 4eme',
  specialty: 'Peintre',
  presentation: "Besoin de couleur dans votre maison ? Faites appel à un veritable artiste !",
  address: '15 Rue Jacques Cœur, 75004 Paris',
  user_id: User.first.id
)

Service.create!(
  title: 'Peintre Boulogne-Billancourt',
  specialty: 'Peintre',
  presentation: "Artiste peintre disponible en région parisienne 7j/7.",
  address: '55-35 Rue Georges Sorel, 92100 Boulogne-Billancourt',
  user_id: User.first.id
)

Service.create!(
  title: 'Peintre Paris 15eme',
  specialty: 'Peintre',
  presentation: "Service de peinture de qualité pour mettre un peu de couleur dans votre appartement. ",
  address: '350-364 Rue Lecourbe, 75015 Paris',
  user_id: User.first.id
)

Service.create!(
  title: 'Jardinier Issy-Les-Moulineaux',
  specialty: 'Jardinier',
  presentation: "Disponible pour l'aménagement de votre jardin en région parisienne.",
  address: "61-43 Rue d'Erevan, 92130 Issy-les-Moulineaux",
  user_id: User.first.id
)

Service.create!(
  title: 'Jardinier Le Vésinet',
  specialty: 'Jardinier',
  presentation: "Le jardin c'est ma passion. Choisissez un expert pour entretenir votre jardin comme il se doit !",
  address: "79 All. du Lac Inférieur, 78110 Le Vésinet",
  user_id: User.first.id
)

Service.create!(
  title: 'Jardinier Saint-Germain-en-Laye',
  specialty: 'Jardinier',
  presentation: "Après avoir travailler dans les plus beaux parcs de Paris, je suis disponible pour m'occuper de votre Jardin.",
  address: "29-9 Rue de Bergette, 78100 Saint-Germain-en-Laye",
  user_id: User.first.id
)

Service.create!(
  title: 'Menuisier Paris 14eme',
  specialty: 'Menuisier',
  presentation: "Fort de 25ans d'expérience, je suis disponible dans Paris pour aménager votre habitat.",
  address: "26 Rue des Plantes, 75014 Paris",
  user_id: User.first.id
)

Service.create!(
  title: 'Menuisier Paris 12eme',
  specialty: 'Menuisier',
  presentation: "Disponible dans Paris pour rénover votre parquet. Service de qualité et pas cher.",
  address: "44 Rue de Picpus, 75012 Paris",
  user_id: User.first.id
)

Service.create!(
  title: 'Menuisier Paris 9eme',
  specialty: 'Menuisier',
  presentation: "Plus grand menuisier de Paris. Artisan disponible du lundi au vendredi.",
  address: "17 Rue de Londres, 75009 Paris",
  user_id: User.first.id
)
