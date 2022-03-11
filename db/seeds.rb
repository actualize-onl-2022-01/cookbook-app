# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 100.times do 
#   recipe = Recipe.new(chef: "brian", ingredients: "lettuce + tomatoes", title: "salad", prep_time: 10, directions: "mix ingredients together")

#   recipe.save
# end

recipe = Recipe.new(chef: "brian", ingredients: "cereal + milk", title: "cereal", prep_time: 2, directions: "pour cereal on top of milk")

recipe.save

recipe = Recipe.new(chef: "brian", ingredients: "lettuce + tomatoes", title: "salad", prep_time: 10, directions: "mix ingredients together")

recipe.save

recipe = Recipe.new(chef: "brian", ingredients: "bread + butter", title: "toast", prep_time: 6, directions: "toast the toast")

recipe.save



