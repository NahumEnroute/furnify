# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  {
    name: 'Modern Office Desk'
  },
  {
    name: 'Oak Coffee Table'
  },
  {
    name: 'Executive Office Chair'
  },
  {
    name: 'Corner Bookcase'
  },
  {
    name: 'Contemporary Loveseat'
  }
].each do |furniture|
  Furniture.create_with(
    name: furniture[:name]
  ).find_or_create_by name: furniture[:name]
end

[
  {
    furniture_id: 1,
    quantity: 3,
    cost: 100,
    address: 'Faraway Beach #5'
  },
  {
    furniture_id: 2,
    quantity: 1,
    cost: 20,
    address: 'Faraway Beach #5'
  },
  {
    furniture_id: 3,
    quantity: 1,
    cost: 20,
    address: 'Faraway Beach #5'
  },
  {
    furniture_id: 4,
    quantity: 4,
    cost: 50,
    address: 'Fabulous Hill #123'
  },
  {
    furniture_id: 5,
    quantity: 1,
    cost: 20,
    address: 'Fabulous Hill #123'
  }
].each do |furniture|
  FurnitureDelivery.create_with(
    furniture_id: furniture[:furniture_id],
    quantity: furniture[:quantity],
    cost: furniture[:cost],
    address: furniture[:address]
  ).create
end
