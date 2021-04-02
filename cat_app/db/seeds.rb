# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative "random"

COLORS = ["blue", "red", "yellow", "white", "green", "black"]

Cat.destroy_all

10.times do
        kitty = Cat.new(
        name: rand_title, 
        birth_date: Time.now - rand(1..10).year, 
        color: COLORS.sample, 
        sex: ["F", "M"].sample,
        description: rand_sentence
    )

    kitty.save 
end 