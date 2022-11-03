# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts 'Seeding the database...'

PEOPLE = 10

if Person.count < PEOPLE
  n = PEOPLE - Person.count
  puts "Creating #{n} People..."
  n.times do
    Person.create(
      name: Faker::Artist.name
    )
  end
end
