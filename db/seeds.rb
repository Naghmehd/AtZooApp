# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

zoo = Zoo.create

Cage.create [
  { group: 'carnivore', zoo: zoo },
  { group: 'herbivore', zoo: zoo },
  { group: 'omnivore',  zoo: zoo }
]

Animal.create [
  { species: 'tiger',   group: 'carnivore' },
  { species: 'lion',    group: 'carnivore' },
  { species: 'wolf',    group: 'carnivore' },
  { species: 'cow',     group: 'herbivore' },
  { species: 'chicken', group: 'herbivore' },
  { species: 'swiggly', group: '' },
  { species: 'baboon',  group: 'omnivore' }
]
