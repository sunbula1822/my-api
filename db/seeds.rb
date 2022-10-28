# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

if Doorkeeper::Application.count.zero?
    Doorkeeper::Application.create!(name: 'Client', redirect_uri: '', scopes: '')
  end




  20.times do 

  @superhero = Superhero.new(
    name: Faker::Superhero.name,
    power: Faker::Superhero.power,
    prefix: Faker::Superhero.prefix,
    suffix: Faker::Superhero.suffix,
    descriptor: Faker::Superhero.descriptor

  )
  @superhero.save
end