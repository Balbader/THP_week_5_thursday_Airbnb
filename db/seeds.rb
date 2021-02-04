# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


# Generate les dogs
def generate_dogs
  Dog.destroy_all
  i = 0
  while i < 50
    Dog.create(dog_name: Faker::Name.first_name)
    i += 1
  end
end


# Generate les city
def generate_city
  City.destroy_all
  i = 0
  while i < 20
    City.create(city_name: Faker::Address.city)
    i += 1
  end
end


# Generate les sitter
def generate_sitters
  Dogsitter.destroy_all
  i = 0
  while i < 30
    Dogsitter.create(name: Faker::Name.name)
    i += 1
  end
end


# Generate les stroll
def generate_stroll
  Stroll.destroy_all
  i = 0
  while i < 150
    d = Dog.all.sample.id
    ds = Dogsitter.all.sample.id
    c = City.all.sample.id
    Stroll.create(
      dog_id: d,
      dogsitter_id: ds,
      city_id: c
    )
    i += 1
  end
end


generate_dogs
generate_city
generate_sitters
generate_stroll

