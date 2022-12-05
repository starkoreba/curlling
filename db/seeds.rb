# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# require "open-uri"

puts "Cleansing user_badges ..."
UserBadge.destroy_all
puts "Creating category_badges..."
CategoryBadge.destroy_all
puts "Cleaning participations..."
Participation.destroy_all
puts "Cleaning badges..."
Badge.destroy_all
puts "Cleaning activities..."
Activity.destroy_all
puts "Cleaning categories..."
Category.destroy_all
puts "Cleaning users..."
User.destroy_all


puts "Creating badges..."
badge1 = Badge.create!(name: "Fun", icon: 'badges/fun_badge.png')
badge2 = Badge.create!(name: "Champion", icon: 'badges/champion_badge.png')
badge3 = Badge.create!(name: "Fonceur", icon: 'badges/rocket_badge.png')
badge4 = Badge.create!(name: "Couche-tard", icon: 'badges/nighty_badge.png')
badge5 = Badge.create!(name: "Bon conducteur", icon: 'badges/conductor_badge.png')
badge6 = Badge.create!(name: "Bon joueur", icon: 'badges/goodplayer_badge.png')
badge7 = Badge.create!(name: "Bon danseur", icon: 'badges/dancer_badge.png')
badge8 = Badge.create!(name: "Malin", icon: 'badges/smart_badge.png')
badge9 = Badge.create!(name: "Enthousiaste", icon: 'badges/enthusiastic_badge.png')
badge10 = Badge.create!(name: "Bon danseur", icon: 'badges/dancer_badge.png')
badge11 = Badge.create!(name: "Cultivé", icon: 'badges/cultured_badge.png')
badge12 = Badge.create!(name: "Céatif", icon: 'badges/creative_badge.png')
badge13 = Badge.create!(name: "Bon danseur", icon: 'badges/dancer_badge.png')
badge14 = Badge.create!(name: "Strategist", icon: 'badges/strategist_badge.png')
badge15 = Badge.create!(name: "Adroit", icon: 'badges/dexterous_badge.png')

puts "Finished!"


puts "Creating datetimes..."
d1 = DateTime.new(2000, 1, 1)
d2 = DateTime.new(2002, 6, 30)
d3 = DateTime.new(2022, 12, 17, 15)
d4 = DateTime.new(2022, 12, 17, 21)
d5 = DateTime.new(2022, 12, 16, 19)
d6 = DateTime.new(2022, 12, 16, 22)
d7 = DateTime.new(2022, 12, 18, 14)
d8 = DateTime.new(2022, 12, 18, 18)
d9 = DateTime.new(2001, 11, 20)
d10 = DateTime.new(1999, 12, 30)
d11 = DateTime.new(2022, 12, 11, 15)
d12 = DateTime.new(2022, 12, 11, 19)
d13 = DateTime.new(2000, 12, 11)
d14 = DateTime.new(2000, 2, 6)
d15 = DateTime.new(2001, 3, 14)
d16 = DateTime.new(2002, 3, 7)
d17 = DateTime.new(2002, 12, 27)
d18 = DateTime.new(1999, 5, 27)
d19 = DateTime.new(1999, 2, 8)
d20 = DateTime.new(1999, 5, 8)
d21 = DateTime.new(2000, 5, 30)
d22 = DateTime.new(2000, 5, 20)
d23 = DateTime.new(2001, 3, 3)
d24 = DateTime.new(1998, 3, 15)
d25 = DateTime.new(2022, 12, 20, 14)
d26 = DateTime.new(2022, 12, 20, 18)
d27 = DateTime.new(2022, 12, 18, 14)
d28 = DateTime.new(2022, 12, 18, 18)
d29 = DateTime.new(2023, 1, 7, 9)
d30 = DateTime.new(2023, 1, 7, 11)
d31 = DateTime.new(2023, 1, 15, 14)
d32 = DateTime.new(2023, 1, 15, 18)
d33 = DateTime.new(2023, 1, 15, 15)
d34 = DateTime.new(2023, 1, 15, 18)
d35 = DateTime.new(2022, 12, 18, 14)
d36 = DateTime.new(2022, 12, 18, 17)
d37 = DateTime.new(2022, 12, 11, 19)
d38 = DateTime.new(2022, 12, 11, 23)
d39 = DateTime.new(2022, 12, 29, 14)
d40 = DateTime.new(2022, 12, 29, 18)
d41 = DateTime.new(2022, 12, 15, 20)
d42 = DateTime.new(2022, 12, 15, 23)
d43 = DateTime.new(2022, 12, 14, 21)
d44 = DateTime.new(2022, 12, 14, 23)
d45 = DateTime.new(2022, 12, 23, 20)
d46 = DateTime.new(2022, 12, 23, 23)
d47 = DateTime.new(2022, 12, 22, 11)
d48 = DateTime.new(2022, 12, 22, 17)
d49 = DateTime.new(2022, 12, 20, 17)
d50 = DateTime.new(2022, 12, 20, 20)
d51 = DateTime.new(2022, 12, 19, 17)
d52 = DateTime.new(2022, 12, 19, 20)




puts "Finished!"


puts "Creating users..."
user1 = User.create!(nickname: 'Jeanne', email: 'jeanne@mail.com', password: 'azerty', birthday: d1, first_name: 'Jeanne', last_name: 'Martin', role: true, score: 200)
puts "Created #{user1.nickname}"

user2 = User.create!(nickname: 'Paulo', email: 'paul@mail.com', password: 'azerty', birthday: d2, first_name: 'Paul', last_name: 'Durand', score: 0)
puts "Created #{user2.nickname}"

user3 = User.create!(nickname: 'Alice', email: 'alice@alice.com', password: 'azerty', birthday: d9, first_name: 'Alice', last_name: 'Parfaite', score: 300)
puts "Created #{user3.nickname}"

user4 = User.create!(nickname: 'Marvin', email: 'marvin@marvin.com', password: 'azerty', birthday: d10, first_name: 'Marvin', last_name: 'Parfaite', score: 0)
puts "Created #{user4.nickname}"

user5 = User.create!(nickname: 'Kévin', email: 'kevin@kevin.com', password: 'azerty', birthday: d13, first_name: 'Kévin', last_name: 'Georges', score: 400)
puts "Created #{user5.nickname}"

user6 = User.create!(nickname: 'Jadejade', email: 'jade@jade.com', password: 'azerty', birthday: d14, first_name: 'Jade', last_name: 'Martin', score: 300)
puts "Created #{user6.nickname}"

user7 = User.create!(nickname: 'Sebseb', email: 'seb@seb.com', password: 'azerty', birthday: d15, first_name: 'Seb', last_name: 'Moury', score: 300)
puts "Created #{user7.nickname}"

user8 = User.create!(nickname: 'Pierre', email: 'pierre@pierre.com', password: 'azerty', birthday: d16, first_name: 'Pierre', last_name: 'Vaudre', score: 300)
puts "Created #{user8.nickname}"

user9 = User.create!(nickname: 'Rosee', email: 'rose@rose.com', password: 'azerty', birthday: d17, first_name: 'Rose', last_name: 'Bouchet', score: 150)
puts "Created #{user9.nickname}"

user10 = User.create!(nickname: 'Loulou', email: 'lou@lou.com', password: 'azerty', birthday: d18, first_name: 'Lou', last_name: 'Marin', score: 100)
puts "Created #{user10.nickname}"

user11 = User.create!(nickname: 'Lilisette', email: 'lili@lili.com', password: 'azerty', birthday: d19, first_name: 'Lili', last_name: 'Bouvay', score: 0)
puts "Created #{user11.nickname}"

user12 = User.create!(nickname: 'Lealouche', email: 'lea@lea.com', password: 'azerty', birthday: d20, first_name: 'Léa', last_name: 'Alouche', score: 150)
puts "Created #{user12.nickname}"

user13 = User.create!(nickname: 'Colin', email: 'colin@colin.com', password: 'azerty', birthday: d21, first_name: 'Colin', last_name: 'Mouray', score: 0)
puts "Created #{user13.nickname}"

user14 = User.create!(nickname: 'Alina', email: 'alina@alina.com', password: 'azerty', birthday: d22, first_name: 'Alina', last_name: 'Vandre', score: 0)
puts "Created #{user14.nickname}"

user15 = User.create!(nickname: 'Bertrand', email: 'bertrand@bertrand.com', password: 'azerty', birthday: d23, first_name: 'Bertrand', last_name: 'Careau', score: 300)
puts "Created #{user15.nickname}"

user16 = User.create!(nickname: 'Maudvalon', email: 'maud@maud.com', password: 'azerty', birthday: d24, first_name: 'Maud', last_name: 'Valon', score: 0)
puts "Created #{user16.nickname}"

puts "Finished!"


puts "Creating categories..."
category1 = Category.create!(name: "Sport")
category2 = Category.create!(name: "Culture")
category3 = Category.create!(name: "Jeux de société")
category4 = Category.create!(name: "Jeux vidéo")
category5 = Category.create!(name: "Activités indoor")
# category3 = Category.create!(name: "Activités manuelles")

puts "Finished!"


puts "Creating sport activities..."
activity1 = Activity.create!(title: "Après-midi escalade", start_date: d3, end_date: d4, description: "Je propose une sortie escalade à la salle Arkose de Bordeaux. Rdv 15h. Tenue confortable à prévoir.", price: 11, address: '170 cours du Médoc, 33300 Bordeaux', user: user1, category: category1)
puts "Created #{activity1.title}"

activity2 = Activity.create!(title: "Bordeaux à vélo", start_date: d7, end_date: d8, description: "Après-midi à vélo dans Bordeaux", price: 0, address: '12 Rue Saint-James, 33300 Bordeaux', user: user1, category: category1)
puts "Created #{activity2.title}"

activity3 = Activity.create!(title: "Sortie vélo au départ de Bordeaux ", start_date: d25, end_date: d26, description: "Je propose une sortie vélo Bordeaux et alentours. Départ Parking Mac Donald", price: 0, address: '7 quai de Bacalan, 33000 Bordeaux', user: user10, category: category1)
puts "Created #{activity3.title}"

activity4 = Activity.create!(title: "Escalade Bloc", start_date: d27, end_date: d28, description: "Pour les grimpeurs débutant ou non, je propose une après-midi escalade", price: 0, address: 'gymnase des dagueys, 33500 Libourne', user: user12, category: category1)
puts "Created #{activity4.title}"

activity5 = Activity.create!(title: "Footing", start_date: d29, end_date: d30, description: "Pour les grimpeurs débutant ou non, je propose une après-midi escalade à la salle Arkose. Pas de matériel requis, en dehors d'une tenue de sport classique. Possibilité de boire/manger sur place. ", price: 0, address: '170 cours du Médoc, 33300 Bordeaux', user: user1, category: category1)
puts "Created #{activity5.title}"

activity6 = Activity.create!(title: "Randonnée", start_date: d31, end_date: d32, description: "Je propose une randonnée pédestres dans les parcs du centre de Gradignan. Durée estimée 2h10 - 7,2 kms - niveau facile. Rdv sortie du parc de l'Hermitage par la rue Lestage", price: 0, address: 'avenue Lestage, 33170 Bordeaux', user: user5, category: category1)
puts "Created #{activity6.title}"
puts "Finished!"

# activity7
# activity8
# activity9
# activity10

puts "Creating culture activities..."
activity11 = Activity.create!(title: "Musée des Beaux Arts ", start_date: d33, end_date: d34, description: "Je propose une sortie au musée des Beaux-Arts de Bordeaux. ", price: 10, address: "20 cours d'Albret, 33300 Bordeaux", user: user7, category: category2)
puts "Created #{activity11.title}"

activity12 = Activity.create!(title: "Sortie au muséum de Bordeaux Sciences et nature ", start_date: d35, end_date: d36, description: "Pour les amateurs de sciences et nature, je propose une sortie au muséum de Bordeaux. ", price: 12, address: "5 place Bardineau, 33300 Bordeaux", user: user6, category: category2)
puts "Created #{activity12.title}"

activity13 = Activity.create!(title: "Ciné : 'Le Lycéen'", start_date: d37, end_date: d38, description: "Je propose une sortie ciné pour aller voir le film Le Lycéeen à l'UGC de Bordeaux", price: 8, address: "13 rue Georges Bonnac, 33300 Bordeaux", user: user9, category: category2)
puts "Created #{activity13.title}"

activity14 = Activity.create!(title: "'Expo Planet or Plastic'", start_date: d39, end_date: d40, description: " L'exposition 'Planet or Plastic' me parait très intéressante. Avis aux amateurs. Musée Mer Marine à Bordeaux", price: 11, address: "89 rue des étrangers, 33300 Bordeaux", user: user8, category: category2)
puts "Created #{activity14.title}"

activity15 = Activity.create!(title: "Sortie cinéma pour le film 'Le Torrent' ", start_date: d41, end_date: d42, description: " Soirée ciné à l'UGC du Bassin des Flots", price: 8, address: "13 rue Georges Bonnac, 33300 Bordeaux", user: user15, category: category2)
puts "Created #{activity15.title}"

activity16 = Activity.create!(title: "Spectacle Acazar comedy live show", start_date: d43, end_date: d44, description: "Je propose une soirée spectacle comédie.", price: 9, address: "170 cours du Médoc, 33000 Bordeaux", user: user12, category: category2)
puts "Created #{activity16.title}"

# activity17
# activity18
# activity19
# activity20


puts "Creating games activities..."

activity21 = Activity.create!(title: "Soirée jeux de société aux Jeux Barjo", start_date: d5, end_date: d6, description: "Pour les plus joueurs d'entre vous, soirée jeux aux Jeux Barjo.", price: 10, address: '12 Rue Saint-James, 33300 Bordeaux', user: user1, category: category3)
puts "Created #{activity21.title}"

activity22 = Activity.create!(title: "Soirée jeux", start_date: d45, end_date: d46, description: "Je propose une soirée jeux à la veille de Noel aux Jeux Barjo.", price: 10, address: '12 Rue Saint-James, 33300 Bordeaux', user: user1, category: category3)
puts "Created #{activity22.title}"

activity23 = Activity.create!(title: "Tournoi d'echecs", start_date: d47, end_date: d48, description: "J'adore les échecs. J'organise un tournoi chez moi ", price: 0, address: '161 rue Lucien Faure, 33300 Bordeaux', user: user1, category: category3)
puts "Created #{activity23.title}"


puts "Creating indoor activities..."

activity24 = Activity.create!(title: "Bowling", start_date: d49, end_date: d50, description: "Après-midi bowling au KART System Indoor" , price: 8, address: 'rue du Grand Barail, 33300 Bordeaux', user: user3, category: category5)
puts "Created #{activity24.title}"

activity25 = Activity.create!(title: "Escape-game", start_date: d51, end_date: d52, description: "Escape-game Clock Escape" , price: 10, address: "36 rue du Pont de la Mousque, 33000 Bordeaux", user: user3, category: category5)
puts "Created #{activity25.title}"



puts "Creating userbadges..."
user_badge1 = UserBadge.create!(giver: user3, receiver: user1, badge: badge1, activity: activity1)
user_badge2 = UserBadge.create!(giver: user5, receiver: user1, badge: badge2, activity: activity1)
user_badge3 = UserBadge.create!(giver: user7, receiver: user1, badge: badge3, activity: activity1)
user_badge4 = UserBadge.create!(giver: user6, receiver: user1, badge: badge4, activity: activity1)
user_badge6 = UserBadge.create!(giver: user9, receiver: user1, badge: badge5, activity: activity1)
puts "Finished!"


puts "Creating participations..."
participation1 = Participation.create!(user: user1, activity: activity1)
participation2 = Participation.create!(user: user1, activity: activity3)
puts "Finished!"


puts "Creating category_badges..."
category_badge1 = CategoryBadge.create!(category: category1, badge: badge1)
category_badge2 = CategoryBadge.create!(category: category1, badge: badge2)
category_badge3 = CategoryBadge.create!(category: category1, badge: badge5)
puts "Finished!"
