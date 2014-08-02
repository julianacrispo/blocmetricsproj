# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 50.times do
   Event.create(
     who:  Faker::Internet.free_email,
     what:   "click", 
     where: Faker::Internet.url
   )
 end
 Events = Event.all
 
 puts "Seed finished"
 puts "#{Event.count} events created"
