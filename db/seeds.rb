# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.create(name: "feuille de menthe")
Ingredient.create(name: "citron")
Ingredient.create(name: "glaçon")
Ingredient.create(name: "rhum")
Ingredient.create(name: "badoit")

Cocktail.create(name: "Mojito")

Dose.create(description: "3 feuille",  ingredient_id: 1, cocktail_id: 1)
Dose.create(description: "5 cl",  ingredient_id: 4, cocktail_id: 1)
Dose.create(description: "2 cl",  ingredient_id: 5, cocktail_id: 1)
