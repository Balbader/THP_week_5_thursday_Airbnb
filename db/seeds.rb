# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


Dog.destroy_all
City.destroy_all
Stroll.destroy_all
Dogsitter.destroy_all


# Generate les dogs
def generate_dogs
  i = 0
  while i < 51
    Dog.create(dog_name: Faker::Name.first_name)
    i += 1
  end
end


# Generate les city
def generate_city
  i = 0
  while i < 21
    City.create(city_name: Faker::Address.city)
    i += 1
  end
end


# Generate les sitter
def generate_sitters
  i = 0
  while i < 31
    Dogsitter.create(name: Faker::Name.name)
    i += 1
  end
end


# Generate les stroll
def generate_stroll
  i = 0
  while i < 151
    d = Dog.order("RANDOM()").limit(1).ids[0]
    ds = Dogsitter.order("RANDOM()").limit(1).ids[0]
    c = City.order("RANDOM()").limit(1).ids[0]
    Stroll.create(
      dog_id: d,
      dogsitter_id: ds,
      city_id: d
    )
    i += 1
  end
end


puts generate_dogs
puts generate_city
puts generate_sitters
generate_stroll

