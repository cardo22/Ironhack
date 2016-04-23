# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

concert1 = Concert.create(name: "Dab Tour", artist: "Migos", venue: "Atlanta Auditorium", city: "Atlanta", date: Time.now + 1.day, price: 20.00, description: "Hottest in Atlanta!")

concert2 = Concert.create(name: "The Goat", artist: "Rich The Kid", venue: "MGM Grand", city: "Las Vegas", date: Time.now + 2.day, price: 15.00, description: "Rich The Kid taking over the strip!")
