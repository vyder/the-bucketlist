# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create default username:"vidur", password:"goosefraba"
vidur = User.new(username:"vidur",email:"vidur.murali@gmail.com",password:"goosefraba",password_confirmation:"goosefraba")
vidur.save!

# Create some sample tasks
ideas = ["Climb Mt. Everest",
         "Buy Milk",
         "Bike 100 miles",
         "Make shawarma from scratch"]

ideas.each do |idea|
  t = Task.new
  t.name = idea
  t.save!
end