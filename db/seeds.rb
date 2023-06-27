# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Task.destroy_all
User.destroy_all

puts 'Creating 10 fake tasks...'
10.times do
  task = Task.new(
    title: Faker::Books::Lovecraft.tome,
    description: Faker::Books::Lovecraft.sentence,
    status: false,
    priority: rand(0..3),
    limite_date: Date.today
  )
  task.save!
end

puts 'Finished!'

boz = User.create(name: "Boz", email: "boz@email.com", password: "azerty")
puts 'Creating 5 fake users...'
5.times do
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Name.name,
  )
  user.save!
end
puts 'Finished!'
