# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'faker'

10.times do
  City.create!(name: Faker::RickAndMorty.location)
end
10.times do
  Dogsitter.create!(first_name: Faker::Fallout.character, last_name: Faker::GameOfThrones.house, city_id: rand(City.first.id..City.last.id))
end

10.times do
  Dog.create!(name: Faker::Book.genre, city_id: rand(City.first.id..City.last.id))
end

10.times do
  Stroll.create!(dog_id: rand(Dog.first.id..Dog.last.id),dogsitter_id: rand(Dogsitter.first.id..Dogsitter.last.id), city_id: rand(City.first.id..City.last.id))
end
