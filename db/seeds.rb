# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

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
badge1 = Badge.create!(name: "Fun", icon: 'badges/fun_badge')
badge2 = Badge.create!(name: "Champion", icon: 'badges/champion_badge')
badge3 = Badge.create!(name: "Fonceur", icon: 'badges/rocket_badge')
badge4 = Badge.create!(name: "Couche-tard", icon: 'badges/nighty_badge')
badge5 = Badge.create!(name: "Bon conducteur", icon: 'badges/conductor_badge')
badge6 = Badge.create!(name: "Bon joueur", icon: 'badges/goodplayer_badge')
badge7 = Badge.create!(name: "Bon danseur", icon: 'badges/dancer_badge')
badge8 = Badge.create!(name: "Malin", icon: 'badges/smart_badge')
badge9 = Badge.create!(name: "Enthousiaste", icon: 'badges/enthusiastic_badge')
badge10 = Badge.create!(name: "Cultivé", icon: 'badges/cultured_badge')
badge11 = Badge.create!(name: "Céatif", icon: 'badges/creative_badge')
badge12 = Badge.create!(name: "Strategist", icon: 'badges/strategist_badge')
badge13 = Badge.create!(name: "Adroit", icon: 'badges/dexterous_badge')

puts "Finished!"

puts "Creating users..."

paul_avatar = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670336837/Paul_ayv5ke.jpg")
user1 = User.new(nickname: 'Paulo', email: 'paul@mail.com', password: 'azerty', birthday: DateTime.new(2002, 6, 30), first_name: 'Paul', last_name: 'Durand', score: 300)
user1.avatar.attach(io: paul_avatar, filename: "paul.png", content_type: "image/png")
user1.save!
puts "Created #{user1.nickname}"

jeanne_avatar = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670336837/Jeanne_n8tsy2.jpg")
user2 = User.new(nickname: 'Jeanne', email: 'jeanne@mail.com', password: 'azerty', birthday: DateTime.new(2000, 1, 1), first_name: 'Jeanne', last_name: 'Martin', role: true, score: 0)
user2.avatar.attach(io: jeanne_avatar, filename: "jeanne.png", content_type: "image/png")
user2.save!
puts "Created #{user2.nickname}"

alice_avatar = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670336837/Alice_jpkviy.jpg")
user3 = User.new(nickname: 'Alice', email: 'alice@alice.com', password: 'azerty', birthday: DateTime.new(2001, 11, 20), first_name: 'Alice', last_name: 'Parfaite', score: 300)
user3.avatar.attach(io: alice_avatar, filename: "alice.png", content_type: "image/png")
user3.save!
puts "Created #{user3.nickname}"

marvin_avatar = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670336837/marvin_nrly2d.jpg")
user4 = User.new(nickname: 'Marvin', email: 'marvin@marvin.com', password: 'azerty', birthday: DateTime.new(1999, 12, 30), first_name: 'Marvin', last_name: 'Parfaite', score: 300)
user4.avatar.attach(io: marvin_avatar, filename: "marvin.png", content_type: "image/png")
user4.save!
puts "Created #{user4.nickname}"

kevin_avatar = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670336837/K%C3%A9vin_b7fptb.jpg")
user5 = User.new(nickname: 'Kévin', email: 'kevin@kevin.com', password: 'azerty', birthday: DateTime.new(2000, 12, 11), first_name: 'Kévin', last_name: 'Georges', score: 400)
user5.avatar.attach(io: kevin_avatar, filename: "kevin.png", content_type: "image/png")
user5.save!
puts "Created #{user5.nickname}"

jade_avatar = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670336837/Jade_yf0aj5.jpg")
user6 = User.new(nickname: 'Jadejade', email: 'jade@jade.com', password: 'azerty', birthday: DateTime.new(2000, 2, 6), first_name: 'Jade', last_name: 'Martin', score: 300)
user6.avatar.attach(io: jade_avatar, filename: "jade.png", content_type: "image/png")
user6.save!
puts "Created #{user6.nickname}"

seb_avatar = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670336854/Sebastien_d7m2ey.jpg")
user7 = User.new(nickname: 'Sebseb', email: 'seb@seb.com', password: 'azerty', birthday: DateTime.new(2001, 3, 14), first_name: 'Seb', last_name: 'Moury', score: 300)
user7.avatar.attach(io: seb_avatar, filename: "seb.png", content_type: "image/png")
user7.save!
puts "Created #{user7.nickname}"

pierre_avatar = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670336837/Pierre_srzga1.jpg")
user8 = User.new(nickname: 'Pierre', email: 'pierre@pierre.com', password: 'azerty', birthday: DateTime.new(2002, 3, 7), first_name: 'Pierre', last_name: 'Vaudre', score: 300)
user8.avatar.attach(io: pierre_avatar, filename: "pierre.png", content_type: "image/png")
user8.save!
puts "Created #{user8.nickname}"

rose_avatar = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670336838/Rose_gse9in.jpg")
user9 = User.new(nickname: 'Rosee', email: 'rose@rose.com', password: 'azerty', birthday: DateTime.new(2002, 12, 27), first_name: 'Rose', last_name: 'Bouchet', score: 150)
user9.avatar.attach(io: rose_avatar, filename: "rose.png", content_type: "image/png")
user9.save!
puts "Created #{user9.nickname}"

lou_avatar = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670336837/Lou_motrcr.jpg")
user10 = User.new(nickname: 'Loulou', email: 'lou@lou.com', password: 'azerty', birthday: DateTime.new(1999, 5, 27), first_name: 'Lou', last_name: 'Marin', score: 100)
user10.avatar.attach(io: lou_avatar, filename: "lou.png", content_type: "image/png")
user10.save!
puts "Created #{user10.nickname}"

lili_avatar = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670336837/Lili_ch9clo.jpg")
user11 = User.new(nickname: 'Lilisette', email: 'lili@lili.com', password: 'azerty', birthday: DateTime.new(1999, 2, 8), first_name: 'Lili', last_name: 'Bouvay', score: 300)
user11.avatar.attach(io: lili_avatar, filename: "lili.png", content_type: "image/png")
user11.save!
puts "Created #{user11.nickname}"

lea_avatar = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670336854/L%C3%A9a_qppxgo.jpg")
user12 = User.new(nickname: 'Lealouche', email: 'lea@lea.com', password: 'azerty', birthday: DateTime.new(1999, 5, 8), first_name: 'Léa', last_name: 'Alouche', score: 150)
user12.avatar.attach(io: lea_avatar, filename: "lea.png", content_type: "image/png")
user12.save!
puts "Created #{user12.nickname}"

colin_avatar = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670336838/Colin_p0d6u1.jpg")
user13 = User.new(nickname: 'Colin', email: 'colin@colin.com', password: 'azerty', birthday: DateTime.new(2000, 5, 30), first_name: 'Colin', last_name: 'Mouray', score: 300)
user13.avatar.attach(io: colin_avatar, filename: "colin.png", content_type: "image/png")
user13.save!
puts "Created #{user13.nickname}"

alina_avatar = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670336837/Alina_drvfee.jpg")
user14 = User.new(nickname: 'Alina', email: 'alina@alina.com', password: 'azerty', birthday: DateTime.new(2000, 5, 20), first_name: 'Alina', last_name: 'Vandre', score: 300)
user14.avatar.attach(io: alina_avatar, filename: "alina.png", content_type: "image/png")
user14.save!
puts "Created #{user14.nickname}"

bertrand_avatar = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670336838/Bertrand_ypfgte.jpg")
user15 = User.new(nickname: 'Bertrand', email: 'bertrand@bertrand.com', password: 'azerty', birthday: DateTime.new(2001, 3, 3), first_name: 'Bertrand', last_name: 'Careau', score: 300)
user15.avatar.attach(io: bertrand_avatar, filename: "bertrand.png", content_type: "image/png")
user15.save!
puts "Created #{user15.nickname}"

maud_avatar = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670336837/Maud_uh6enm.jpg")
user16 = User.new(nickname: 'Maudvalon', email: 'maud@maud.com', password: 'azerty', birthday: DateTime.new(1998, 3, 15), first_name: 'Maud', last_name: 'Valon', score: 300)
user16.avatar.attach(io: maud_avatar, filename: "maud.png", content_type: "image/png")
user16.save!
puts "Created #{user16.nickname}"
puts "Finished!"

# --- Categories ---

puts "Creating categories..."
category1 = Category.create!(name: "Sport")
category2 = Category.create!(name: "Culture")
category3 = Category.create!(name: "Jeux de société")
category4 = Category.create!(name: "Activités indoor")
category5 = Category.create!(name: "Jeux vidéo")
# category6 = Category.create!(name: "Activités manuelles")
puts "Finished!"

# --- Activities ---
# --- Sport activities ---
puts "Creating sport activities..."
act1_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324162/activity1_gwqjjp.jpg")
activity1 = Activity.new(title: "Escalade", start_date: DateTime.new(2022, 12, 11, 15), end_date: DateTime.new(2022, 12, 11, 19), description: "Je propose une sortie escalade à la salle Arkose de Bordeaux. Rdv 15h. Tenue confortable à prévoir.", price: 11, address: '170 cours du Médoc, 33300 Bordeaux', user: user12, category: category1)
activity1.picture.attach(io: act1_picture, filename: "act1.png", content_type: "image/png")
activity1.save!
puts "Created #{activity1.title}"

act2_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324162/activity2_gexnbv.jpg")
activity2 = Activity.new(title: "Vélo Balade", start_date: DateTime.new(2022, 12, 18, 14), end_date: DateTime.new(2022, 12, 18, 18), description: "Après-midi à vélo dans Bordeaux", price: 0, address: '12 Rue Saint-James, 33300 Bordeaux', user: user13, category: category1)
activity2.picture.attach(io: act2_picture, filename: "act2.png", content_type: "image/png")
activity2.save!
puts "Created #{activity2.title}"

act3_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324162/activity3_apdkux.jpg")
activity3 = Activity.new(title: "Sortie vélo", start_date: DateTime.new(2022, 12, 20, 14), end_date: DateTime.new(2022, 12, 20, 18), description: "Je propose une sortie vélo Bordeaux et alentours. Départ Parking Mac Donald", price: 0, address: '7 quai de Bacalan, 33000 Bordeaux', user: user10, category: category1)
activity3.picture.attach(io: act3_picture, filename: "act3.png", content_type: "image/png")
activity3.save!
puts "Created #{activity3.title}"

act4_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324163/activity4_rdf3dg.jpg")
activity4 = Activity.new(title: "Escalade Bloc", start_date: DateTime.new(2022, 12, 18, 14), end_date: DateTime.new(2022, 12, 18, 18), description: "Pour les grimpeurs débutant ou non, je propose un après-midi escalade à la salle Arkose", price: 11, address: '170 cours du Médoc, 33300 Bordeaux', user: user1, category: category1)
activity4.picture.attach(io: act4_picture, filename: "act4.png", content_type: "image/png")
activity4.save!
puts "Created #{activity4.title}"

act5_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324163/activity5_nwj5vz.jpg")
activity5 = Activity.new(title: "Footing", start_date: DateTime.new(2022, 12, 10, 9), end_date: DateTime.new(2022, 12, 10, 11), description: "Pour les grimpeurs débutant ou non, je propose une après-midi escalade à la salle Arkose. Pas de matériel requis, en dehors d'une tenue de sport classique. Possibilité de boire/manger sur place. ", price: 0, address: '170 cours du Médoc, 33300 Bordeaux', user: user1, category: category1)
activity5.picture.attach(io: act5_picture, filename: "act5.png", content_type: "image/png")
activity5.save!
puts "Created #{activity5.title}"

act6_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324163/activity6_crij8i.jpg")
activity6 = Activity.new(title: "Randonnée", start_date: DateTime.new(2023, 12, 18, 14), end_date: DateTime.new(2023, 12, 18, 18), description: "Je propose une randonnée pédestres dans les parcs du centre de Gradignan. Durée estimée 2h10 - 7,2 kms - niveau facile. Rdv sortie du parc de l'Hermitage par la rue Lestage", price: 0, address: 'avenue Lestage, 33170 Bordeaux', user: user5, category: category1)
activity6.picture.attach(io: act6_picture, filename: "act6.png", content_type: "image/png")
activity6.save!
puts "Created #{activity6.title}"

# activity7
# activity8
# activity9
# activity10
puts "Finished!"

# --- Culture activities ---
puts "Creating culture activities..."
act11_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324163/activity11_ykplwm.jpg")
activity11 = Activity.new(title: "Musée Beaux Arts", start_date: DateTime.new(2023, 1, 15, 15), end_date: DateTime.new(2023, 1, 15, 18), description: "Je propose une sortie au musée des Beaux-Arts de Bordeaux. ", price: 10, address: "20 cours d'Albret, 33300 Bordeaux", user: user7, category: category2)
activity11.picture.attach(io: act11_picture, filename: "act11.png", content_type: "image/png")
activity11.save!
puts "Created #{activity11.title}"

act12_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324264/activity12_l9fs8g.jpg")
activity12 = Activity.new(title: "Museum Sciences et nature ", start_date: DateTime.new(2022, 12, 18, 14), end_date: DateTime.new(2022, 12, 18, 17), description: "Pour les amateurs de sciences et nature, je propose une sortie au muséum de Bordeaux. ", price: 12, address: "5 place Bardineau, 33300 Bordeaux", user: user6, category: category2)
activity12.picture.attach(io: act12_picture, filename: "act12.png", content_type: "image/png")
activity12.save!
puts "Created #{activity12.title}"

act13_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324163/activity13_wkgltm.jpg")
activity13 = Activity.new(title: "Ciné 'Le Lycéen'", start_date: DateTime.new(2022, 12, 11, 19), end_date: DateTime.new(2022, 12, 11, 23), description: "Je propose une sortie ciné pour aller voir le film Le Lycéeen à l'UGC de Bordeaux", price: 8, address: "13 rue Georges Bonnac, 33300 Bordeaux", user: user9, category: category2)
activity13.picture.attach(io: act13_picture, filename: "act13.png", content_type: "image/png")
activity13.save!
puts "Created #{activity13.title}"

act14_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324163/activity14_nvhlsw.jpg")
activity14 = Activity.new(title: "'Expo Planet or Plastic'", start_date: DateTime.new(2022, 12, 29, 14), end_date: DateTime.new(2022, 12, 29, 18), description: " L'exposition 'Planet or Plastic' me parait très intéressante. Avis aux amateurs. Musée Mer Marine à Bordeaux", price: 11, address: "89 rue des étrangers, 33300 Bordeaux", user: user8, category: category2)
activity14.picture.attach(io: act14_picture, filename: "act14.png", content_type: "image/png")
activity14.save!
puts "Created #{activity14.title}"

act15_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324163/activity15_jzgqwc.jpg")
activity15 = Activity.new(title: "Cinéma 'Le Torrent' ", start_date: DateTime.new(2022, 12, 15, 20), end_date: DateTime.new(2022, 12, 15, 23), description: " Soirée ciné à l'UGC du Bassin des Flots", price: 8, address: "13 rue Georges Bonnac, 33300 Bordeaux", user: user15, category: category2)
activity15.picture.attach(io: act15_picture, filename: "act15.png", content_type: "image/png")
activity15.save!
puts "Created #{activity15.title}"

act16_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324163/activity16_uaqzgu.jpg")
activity16 = Activity.new(title: "Théâtre comédie", start_date: DateTime.new(2022, 12, 14, 21), end_date: DateTime.new(2022, 12, 14, 23), description: "Je propose une soirée spectacle : Acazar comedy live show", price: 9, address: "170 cours du Médoc, 33000 Bordeaux", user: user12, category: category2)
activity16.picture.attach(io: act16_picture, filename: "act16.png", content_type: "image/png")
activity16.save!
puts "Created #{activity16.title}"

# activity17
# activity18
# activity19
# activity20
puts "Finished!"

# --- Games activities ---
puts "Creating games activities..."

act21_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324163/activity21_j4iz4b.jpg")
activity21 = Activity.new(title: "Soirée jeux", start_date: DateTime.new(2022, 12, 16, 19), end_date: DateTime.new(2022, 12, 16, 22), description: "Pour les plus joueurs d'entre vous, soirée jeux aux Jeux Barjo.", price: 10, address: '12 Rue Saint-James, 33300 Bordeaux', user: user8, category: category3)
activity21.picture.attach(io: act21_picture, filename: "act21.png", content_type: "image/png")
activity21.save!
puts "Created #{activity21.title}"

act22_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324161/activity22_hdm4h3.jpg")
activity22 = Activity.new(title: "Jeux de société", start_date: DateTime.new(2022, 12, 23, 20), end_date: DateTime.new(2022, 12, 23, 23), description: "Je propose une soirée jeux à la veille de Noel aux Jeux Barjo.", price: 10, address: '12 Rue Saint-James, 33300 Bordeaux', user: user16, category: category3)
activity22.picture.attach(io: act22_picture, filename: "act22.png", content_type: "image/png")
activity22.save!
puts "Created #{activity22.title}"

act23_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324161/activity23_ulowyd.jpg")
activity23 = Activity.new(title: "Echecs", start_date: DateTime.new(2022, 12, 22, 11), end_date: DateTime.new(2022, 12, 22, 17), description: "Tournoi à l'Echiquier Bordelais", price: 7, address: '36 rue Buhan, 33300 Bordeaux', user: user7, category: category3)
activity23.picture.attach(io: act23_picture, filename: "act23.png", content_type: "image/png")
activity23.save!
puts "Created #{activity23.title}"

act24_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324264/activity24_qhzkxj.jpg")
activity24 = Activity.new(title: "Après-midi jeux", start_date: DateTime.new(2023, 1, 6, 14), end_date: DateTime.new(2023, 1, 6, 18), description: "Un après-midi dédié aux jeux, ouvert à tous à l'espace EDIL", price: 0, address: '5 place Sainte-Eulalie, 33300 Bordeaux', user: user5, category: category3)
activity24.picture.attach(io: act24_picture, filename: "act24.png", content_type: "image/png")
activity24.save!
puts "Created #{activity24.title}"

act25_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324161/activity25_ozwrrd.jpg")
activity25 = Activity.new(title: "Echecs", start_date: DateTime.new(2023, 1, 7, 19), end_date: DateTime.new(2023, 1, 7, 23), description: "Soirée échecs à Bordeaux Aspom Echec", price: 4, address: '131 bis rue Amédée Saint-Germain, 33300 Bordeaux', user: user9, category: category3)
activity25.picture.attach(io: act25_picture, filename: "act25.png", content_type: "image/png")
activity25.save!
puts "Created #{activity25.title}"

act26_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324161/activity26_qblvmh.jpg")
activity26 = Activity.new(title: "Jeux de société", start_date: DateTime.new(2023, 1, 5, 18), end_date: DateTime.new(2023, 1, 5, 23), description: "Je propose une soirée jeux au Muse Café. Il est possible de manger sur place. J'ai indiqué le prix sans les consommations. Venez nombreux!", price: 5, address: '10 rue Brascassat, 33800 Bordeaux', user: user15, category: category3)
activity26.picture.attach(io: act26_picture, filename: "act26.png", content_type: "image/png")
activity26.save!
puts "Created #{activity26.title}"

# activity27
# activity28
# activity29
# activity30
puts "Finished!"

# --- Indoor activities ---
puts "Creating indoor activities..."

act31_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324161/activity31_mtf4cp.jpg")
activity31 = Activity.new(title: "Bowling", start_date: DateTime.new(2022, 12, 20, 17), end_date: DateTime.new(2022, 12, 20, 20), description: "Après-midi bowling au KART System Indoor pour débutant ou confirmés. Venez comme vous êtes!" , price: 8, address: 'rue du Grand Barail, 33300 Bordeaux', user: user3, category: category4)
activity31.picture.attach(io: act31_picture, filename: "act31.png", content_type: "image/png")
activity31.save!
puts "Created #{activity31.title}"

act32_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324161/activity32_oruxpa.jpg")
activity32 = Activity.new(title: "Escape-game", start_date: DateTime.new(2022, 12, 29, 17), end_date: DateTime.new(2022, 12, 29, 20), description: "Escape-game Clock Escape" , price: 10, address: "36 rue du Pont de la Mousque, 33000 Bordeaux", user: user3, category: category4)
activity32.picture.attach(io: act32_picture, filename: "act32.png", content_type: "image/png")
activity32.save!
puts "Created #{activity32.title}"

act33_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324161/activity33_bhloo3.png")
activity33 = Activity.new(title: "Escape-game", start_date: DateTime.new(2022, 12, 17, 20), end_date: DateTime.new(2022, 12, 17, 23), description: "Escape-game Clock Escape" , price: 10, address: "36 rue du Pont de la Mousque, 33000 Bordeaux", user: user4, category: category4)
activity33.picture.attach(io: act33_picture, filename: "act33.png", content_type: "image/png")
activity33.save!
puts "Created #{activity33.title}"

act34_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324161/activity34_mjnhbt.jpg")
activity34 = Activity.new(title: "Bowling", start_date: DateTime.new(2023, 1, 6, 20), end_date: DateTime.new(2023, 1, 6, 23), description: "Bowling au KART System Indoor. Plus on est de fous, plus on rit!" , price: 8, address: 'rue du Grand Barail, 33300 Bordeaux', user: user6, category: category4)
activity34.picture.attach(io: act34_picture, filename: "act34.png", content_type: "image/png")
activity34.save!
puts "Created #{activity34.title}"

act35_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324161/activity35_b0i8ru.jpg")
activity35 = Activity.new(title: "Billard", start_date: DateTime.new(2022, 12, 30, 19), end_date: DateTime.new(2022, 12, 30, 23), description: "Soirée billard, pour débutants ou confirmés. Venez comme vous êtes!" , price: 5, address: 'Terrasse du Général Koenig, 33300 Bordeaux', user: user11, category: category4)
activity35.picture.attach(io: act35_picture, filename: "act35.png", content_type: "image/png")
activity35.save!
puts "Created #{activity35.title}"

act36_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324264/activity36_ywzxh1.jpg")
activity36 = Activity.new(title: "Karting", start_date: DateTime.new(2022, 12, 18, 14), end_date: DateTime.new(2022, 12, 18, 18), description: "Après-midi Karting indoor au Kart System Bordeaux-Lac" , price: 7, address: 'rue du Grand Barail, 33300 Bordeaux', user: user14, category: category4)
activity36.picture.attach(io: act36_picture, filename: "act36.png", content_type: "image/png")
activity36.save!
puts "Created #{activity36.title}"

# activity37
# activity38
# activity39
# activity40
puts "Finished!"

# --- Video games activities ---
puts "Creating video games activities..."

act41_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324162/activity41_blmuif.jpg")
activity41 = Activity.new(title: "Virtual room", start_date: DateTime.new(2022, 12, 17, 14), end_date: DateTime.new(2022, 12, 17, 18), description: "Après-midi immersion dans la réalité virtuelle" , price: 20, address: '3 Sente de Nancy, 33300 Bordeaux', user: user15, category: category5)
activity41.picture.attach(io: act41_picture, filename: "act41.png", content_type: "image/png")
activity41.save!
puts "Created #{activity41.title}"

act42_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324162/activity42_eaihji.jpg")
activity42 = Activity.new(title: "Jeux vidéo", start_date: DateTime.new(2022, 12, 10, 20), end_date: DateTime.new(2022, 12, 10, 23), description: "Soirée jeux vidéo au R4ndom." , price: 8, address: '5 place Louis Barthou, 33000 Bordeaux', user: user14, category: category5)
activity42.picture.attach(io: act42_picture, filename: "act42.png", content_type: "image/png")
activity42.save!
puts "Created #{activity42.title}"

act43_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324162/activity43_rhs52j.jpg")
activity43 = Activity.new(title: "Video games", start_date: DateTime.new(2022, 12, 17, 20), end_date: DateTime.new(2022, 12, 17, 23), description: "Soirée jeux vidéo au R4ndom." , price: 8, address: '5 place Louis Barthou, 33000 Bordeaux', user: user14, category: category5)
activity43.picture.attach(io: act43_picture, filename: "act43.png", content_type: "image/png")
activity43.save!
puts "Created #{activity43.title}"

act44_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324162/activity44_bpnytl.jpg")
activity44 = Activity.new(title: "Game Factory event", start_date: DateTime.new(2022, 12, 17, 20), end_date: DateTime.new(2022, 12, 17, 23), description: "Soirée spécialement dédiée au jeux vidéos. Evènement grand public gratuit à l'Union Saint-Jean" , price: 0, address: '97 rue Malbec, 33800 Bordeaux', user: user16, category: category5)
activity44.picture.attach(io: act44_picture, filename: "act44.png", content_type: "image/png")
activity44.save!
puts "Created #{activity44.title}"

act45_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324162/activity45_zeu6fi.jpg")
activity45 = Activity.new(title: "Jeux vidéo", start_date: DateTime.new(2022, 12, 11, 20), end_date: DateTime.new(2022, 12, 11, 23), description: "Soirée jeux vidéo au Meltdown à Bordeaux" , price: 7, address: "129 cours d'Albret, 33000 Bordeaux", user: user4, category: category5)
activity45.picture.attach(io: act45_picture, filename: "act45.png", content_type: "image/png")
activity45.save!
puts "Created #{activity45.title}"

# activity46
# activity47
# activity48
# activity49
puts "Finished!"

# --- Création des activités passées de Paul ---
puts "Creating past events for Paul..."

act50_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324162/activity50_rajgop.jpg")
activity50 = Activity.new(title: "Bowling", start_date: DateTime.new(2022, 12, 2, 20), end_date: DateTime.new(2022, 12, 2, 23), description: "Soirée bowling au KART System Indoor. Débutant ou confirmés, venez comme vous êtes! 8 euros la partie" , price: 8, address: 'rue du Grand Barail, 33300 Bordeaux', user: user3, category: category4)
activity50.picture.attach(io: act50_picture, filename: "act50.png", content_type: "image/png")
activity50.save!
puts "Created #{activity50.title}"

act51_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324162/activity51_qkkhwn.jpg")
activity51 = Activity.new(title: "Course à pied", start_date: DateTime.new(2022, 5, 13, 9), end_date: DateTime.new(2022, 5, 13, 11), description: "J'ai l'habitude de courrir le dimanche matin le long des berges de la Garonne. Entre 1h et 1h15 de course. Départ parking Mac Donald" , price: 0, address: 'Place de Latule, 33000 Bordeaux', user: user10, category: category1)
activity51.picture.attach(io: act51_picture, filename: "act51.png", content_type: "image/png")
activity51.save!
puts "Created #{activity51.title}"

act52_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670342313/activity52_whla4k.jpg")
activity52 = Activity.new(title: "Accrobranche", start_date: DateTime.new(2022, 7, 10, 14), end_date: DateTime.new(2022, 7, 10, 18), description: "J'adore l'accrobranche. J'ai l'habitude d'y aller avec mes amis mais tous sont en vacances. Je serais ravi de partager l'activité avec plusieurs d'entre vous. Un bon moyen pour chacun de rencontrer de nouvelles personnes. Loisirs et aventures au complexe sportif de Thouars. Rdv à l'accueil à 14h." , price: 14, address: 'Avenue de la Marne, 33400 Talence', user: user13, category: category1)
activity52.picture.attach(io: act52_picture, filename: "act52.png", content_type: "image/png")
activity52.save!
puts "Created #{activity52.title}"

act53_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324162/activity53_hz2gaa.jpg")
activity53 = Activity.new(title: "Roller", start_date: DateTime.new(2022, 6, 26, 19), end_date: DateTime.new(2022, 6, 26, 23), description: "Soirée conviviale et dansante au Moovens roller rink : piste de roller de 800m2, musique et boule à facettes! Tous niveaux, l'idée, c'est de rencontrer de nouvelles personnes et de s'amuser. Un moniteur est toujours présent sur la piste pour aider à les débutants. Snack bar sur place" , price: 10, address: '11 avenue de la Madeleine, 33170 Gradignan', user: user10, category: category1)
activity53.picture.attach(io: act53_picture, filename: "act53.png", content_type: "image/png")
activity53.save!
puts "Created #{activity53.title}"

act54_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324162/activity54_aiu7jq.jpg")
activity54 = Activity.new(title: "Expérience virtuelle", start_date: DateTime.new(2022, 5, 15, 15), end_date: DateTime.new(2022, 5, 15, 18), description: "Après-midi immersion dans la réalité virtuelle à la Virtual Room de Bordeaux. Cette expérience me tente depuis longtemps. Les aventures s'y pratiquent à plusieurs. Si l'expérience vous tente également, n'hésitez pas à vous joindre à moi." , price: 20, address: '3 Sente de Nancy, 33300 Bordeaux', user: user15, category: category5)
activity54.picture.attach(io: act54_picture, filename: "act54.png", content_type: "image/png")
activity54.save!
puts "Created #{activity54.title}"

act55_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324162/activity55_ypjisl.jpg")
activity55 = Activity.new(title: "Escalade", start_date: DateTime.new(2022, 11, 12, 15), end_date: DateTime.new(2022, 11, 12, 19), description: "Après-midi escalade bloc à la salle Arkose de Bordeaux. Rdv 15h. Pour tous les niveaux.", price: 11, address: '170 cours du Médoc, 33300 Bordeaux', user: user1, category: category1)
activity55.picture.attach(io: act55_picture, filename: "act55.png", content_type: "image/png")
activity55.save!
puts "Created #{activity55.title}"

act56_picture = URI.open("https://res.cloudinary.com/da3r3z7ya/image/upload/v1670324162/activity56_jonyyt.jpg")
activity56 = Activity.new(title: "VTT rando", start_date: DateTime.new(2022, 10, 30, 15), end_date: DateTime.new(2022, 10, 30, 19), description: "Je propose une rando VTT dans les bois au départ de Cénon. rdv sur le parking de La Poste. Niveau intermédiaire, bonne condition physique requise. 52kms/4h.", price: 11, address: 'Avenue Roger Schwob, 33150 Cénon', user: user1, category: category1)
activity56.picture.attach(io: act56_picture, filename: "act56.png", content_type: "image/png")
activity56.save!
puts "Created #{activity56.title}"
puts "Finished!"

# --- userbadges ---
puts "Creating userbadges..."

# -- 5 participants (en dehors de Paul) à l'activité 50 - activité indoor - qui ont donné un badge à Paul --
user_badge1 = UserBadge.create!(giver: user3, receiver: user1, badge: badge1, activity: activity50)
user_badge2 = UserBadge.create!(giver: user5, receiver: user1, badge: badge2, activity: activity50)
user_badge3 = UserBadge.create!(giver: user7, receiver: user1, badge: badge1, activity: activity50)
user_badge4 = UserBadge.create!(giver: user6, receiver: user1, badge: badge2, activity: activity50)
user_badge6 = UserBadge.create!(giver: user9, receiver: user1, badge: badge1, activity: activity50)

# -- 3 participants (en dehors de Paul) à l'activité 51 - sport- qui ont donné un badge à Paul --
user_badge7 = UserBadge.create!(giver: user15, receiver: user1, badge: badge3, activity: activity51)
user_badge8 = UserBadge.create!(giver: user14, receiver: user1, badge: badge3, activity: activity51)
user_badge9 = UserBadge.create!(giver: user13, receiver: user1, badge: badge2, activity: activity51)

# -- 5 participants (en dehors de Paul) à l'activité 52 - sport - qui ont donné un badge à Paul --
user_badge10 = UserBadge.create!(giver: user7, receiver: user1, badge: badge3, activity: activity52)
user_badge11 = UserBadge.create!(giver: user10, receiver: user1, badge: badge3, activity: activity52)
user_badge12 = UserBadge.create!(giver: user11, receiver: user1, badge: badge1, activity: activity52)
user_badge13 = UserBadge.create!(giver: user9, receiver: user1, badge: badge1, activity: activity52)
user_badge14 = UserBadge.create!(giver: user4, receiver: user1, badge: badge1, activity: activity52)

# -- 6 participants (en dehors de Paul) à l'activité 53 - sport - qui ont donné un badge à Paul --
user_badge15 = UserBadge.create!(giver: user3, receiver: user1, badge: badge1, activity: activity53)
user_badge16 = UserBadge.create!(giver: user4, receiver: user1, badge: badge1, activity: activity53)
user_badge17 = UserBadge.create!(giver: user5, receiver: user1, badge: badge3, activity: activity53)
user_badge18 = UserBadge.create!(giver: user6, receiver: user1, badge: badge3, activity: activity53)
user_badge19 = UserBadge.create!(giver: user8, receiver: user1, badge: badge3, activity: activity53)

# -- 3 participants (en dehors de Paul) à l'activité 54 - jeux vidéo - qui ont donné un badge à Paul --
user_badge20 = UserBadge.create!(giver: user15, receiver: user1, badge: badge12, activity: activity54)
user_badge21 = UserBadge.create!(giver: user14, receiver: user1, badge: badge6, activity: activity54)
user_badge22 = UserBadge.create!(giver: user12, receiver: user1, badge: badge9, activity: activity54)

# --- 7 participants (en dehors de Paul) à l'activité 55 - sport- qui ont donné un badge à Paul --
user_badge23 = UserBadge.create!(giver: user3, receiver: user1, badge: badge1, activity: activity55)
user_badge24 = UserBadge.create!(giver: user4, receiver: user1, badge: badge2, activity: activity55)
user_badge25 = UserBadge.create!(giver: user5, receiver: user1, badge: badge3, activity: activity55)
user_badge26 = UserBadge.create!(giver: user6, receiver: user1, badge: badge1, activity: activity55)
user_badge27 = UserBadge.create!(giver: user8, receiver: user1, badge: badge2, activity: activity55)
user_badge28 = UserBadge.create!(giver: user9, receiver: user1, badge: badge3, activity: activity55)
user_badge29 = UserBadge.create!(giver: user10, receiver: user1, badge: badge3, activity: activity55)

# --- 1 participant (en dehors de Paul) à l'activité 56 - sport - qui ont donné un badge à Paul ---
user_badge30 = UserBadge.create!(giver: user15, receiver: user1, badge: badge3, activity: activity56)
puts "Finished!"

# --- Participations ---
puts "Creating participations..."

# --- Participations pour l'activité (à venir) d'Escalade bloc créée par Paul et que Jeanne sélectionnera ---
participation1 = Participation.create!(user: user5, activity: activity4)
participation2 = Participation.create!(user: user7, activity: activity4)
participation3 = Participation.create!(user: user8, activity: activity4)
participation4 = Participation.create!(user: user15, activity: activity4)
participation5 = Participation.create!(user: user13, activity: activity4)
participation6 = Participation.create!(user: user4, activity: activity4)

# --- Participations pour la dernière activité de Paul (Bowling, 2 déc) : attribution de badges --
participation7 = Participation.create!(user: user1, activity: activity50)
participation8 = Participation.create!(user: user11, activity: activity50)
participation9 = Participation.create!(user: user9, activity: activity50)
participation10 = Participation.create!(user: user3, activity: activity50)
participation11 = Participation.create!(user: user12, activity: activity50)
participation12 = Participation.create!(user: user10, activity: activity50)
puts "Finished!"

# --- Participations de Paul aux autres activités passées (sauf Bowling déjà ci-dessus)
participation13 = Participation.create!(user: user1, activity: activity51)
participation14 = Participation.create!(user: user1, activity: activity52)
participation15 = Participation.create!(user: user1, activity: activity53)
participation16 = Participation.create!(user: user1, activity: activity54)

# --- category_badges ---
puts "Creating category_badges..."
# --- badges par catégorie (4 badges pour chacune des catégories)---
# --- catégorie 1 : Sport ---
category_badge1 = CategoryBadge.create!(category: category1, badge: badge1)
category_badge2 = CategoryBadge.create!(category: category1, badge: badge2)
category_badge3 = CategoryBadge.create!(category: category1, badge: badge3)
category_badge4 = CategoryBadge.create!(category: category1, badge: badge6)
# -- catégorie 2 : Culture --
category_badge5 = CategoryBadge.create!(category: category2, badge: badge1)
category_badge6 = CategoryBadge.create!(category: category2, badge: badge10)
category_badge7 = CategoryBadge.create!(category: category2, badge: badge9)
category_badge8 = CategoryBadge.create!(category: category2, badge: badge8)
# -- catégorie 3 : Jeux de société --
category_badge9 = CategoryBadge.create!(category: category3, badge: badge1)
category_badge10 = CategoryBadge.create!(category: category3, badge: badge10)
category_badge11 = CategoryBadge.create!(category: category3, badge: badge6)
category_badge12 = CategoryBadge.create!(category: category3, badge: badge8)
# -- catégorie 4 : Activités indoor --
category_badge13 = CategoryBadge.create!(category: category4, badge: badge1)
category_badge14 = CategoryBadge.create!(category: category4, badge: badge2)
category_badge15 = CategoryBadge.create!(category: category4, badge: badge6)
category_badge16 = CategoryBadge.create!(category: category4, badge: badge13)
# -- catégorie 5 : Jeux vidéo --
category_badge17 = CategoryBadge.create!(category: category5, badge: badge1)
category_badge18 = CategoryBadge.create!(category: category5, badge: badge6)
category_badge19 = CategoryBadge.create!(category: category5, badge: badge12)
category_badge20 = CategoryBadge.create!(category: category5, badge: badge2)
puts "Finished!"
