# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

project_num_6 = Project.create(name: "After Lunch", description: "Testing seeds.rb file")
seeds = Project.create(name: "Seeds Testing", description: "Expirimenting with rails.")