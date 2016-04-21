# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

project_num_6 = Project.create(name: "After Lunch", description: "Testing seeds.rb file")
seeds = Project.create(name: "Seeds Testing", description: "Expirimenting with rails.")

project1 = Project.create(name: "Emerge", description: "It was a success!")

time_entry1 = TimeEntry.create(project_id: project1.id, hours: 2, minutes: 40, comment: "I am exausted", date: Time.now)

# time_entry2 = TimeEntry.create(project_id: project2.id, hours: 0, minutes: 45, comment: "Was a very short project.", date: Time.now)

puts project1.time_entries.length