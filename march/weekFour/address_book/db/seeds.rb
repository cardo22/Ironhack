# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

contact_1 = Contact.create(name: 'John', address: '1860 NW Miami, Fl', phone_number: 5619912856, email: 'j@yahoo.com')
contact_2 = Contact.create(name: 'Faraz', address: '1880 SE Miami, Fl', phone_number: 5615312856, email: 'faraz@yahoo.com')
contact_3 = Contact.create(name: 'John', address: '1420 NW Brickell, Fl', phone_number: 5616712856, email: 'nizar@yahoo.com')