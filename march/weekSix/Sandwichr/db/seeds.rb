# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
tournament_1 = Tournament.create(name: "Fight Night")
p tournament_1.id
player_1 = Player.create(name: "Floyde Mayweather")
player_2 = Player.create(name: "Manny Pacio")

player_one_registration = Registration.create(tournament_id: 1, player_id: 1)
player_two_registration = Registration.create(tournament_id: 1, player_id: 2)

