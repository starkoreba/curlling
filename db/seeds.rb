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

p"truc"

puts "Creating badges..."
badge1 = Badge.create!(name: "Fun", icon: 'fun_badge')
badge2 = Badge.create!(name: "Champion(ne)", icon: 'champion_badge')
badge3 = Badge.create!(name: "Fonceur(euse)", icon: 'dynamic_bage')
badge4 = Badge.create!(name: "Couche-tard", icon: 'night_owl_badge')
badge5 = Badge.create!(name: "Bon(ne) conducteur(trice)", icon: 'conductor_badge')
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
puts "Finished!"


puts "Creating users..."
user1 = User.create!(nickname: 'Jeanne', email: 'jeanne@mail.com', password: 'azerty', birthday: d1, first_name: 'Jeanne', last_name: 'Martin', role: true, score: 200)
puts "Created #{user1.nickname}"

user2 = User.create!(nickname: 'Paulo', email: 'paul@mail.com', password: 'azerty', birthday: d2, first_name: 'Paul', last_name: 'Durand', score: 0)
puts "Created #{user2.nickname}"
puts "Finished!"


puts "Creating categories..."
category1 = Category.create!(name: "Sport")
category2 = Category.create!(name: "Soirées")
category3 = Category.create!(name: "Culture")
category4 = Category.create!(name: "Activités manuelles")
category5 = Category.create!(name: "Jeux de société")
category6 = Category.create!(name: "Jeux vidéo")
puts "Finished!"



puts "Creating activities..."
activity1 = Activity.create!(title: "Après-midi escalade", start_date: d3, end_date: d4, description: "Je propose une sortie escalade à la salle Arkose de Bordeaux. Rdv 15h. Tenue confortable à prévoir.", price: 11, address: '170 cours du Médoc, 33300 Bordeaux', user: user1, category: category1)

puts "Created #{activity1.title}"

activity2 = Activity.create!(title: "Soirée jeux", start_date: d5, end_date: d6, description: "Pour les plus joueurs d'entre vous, soirée jeux aux Jeux Barjo.", price: 10, address: '12 Rue Saint-James, 33300 Bordeaux', user: user1, category: category5)
puts "Created #{activity2.title}"

activity3 = Activity.create!(title: "Bordeaux à vélo", start_date: d7, end_date: d8, description: "Après-midi à vélo dans Bordeaux", price: 0, address: '12 Rue Saint-James, 33300 Bordeaux', user: user1, category: category1)
puts "Created #{activity3.title}"
puts "Finished!"


puts "Creating userbadges..."
user_badge1 = UserBadge.create!(giver: user2, receiver: user1, badge: badge1, activity: activity1)
user_badge2 = UserBadge.create!(giver: user1, receiver: user2, badge: badge2, activity: activity1)
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
