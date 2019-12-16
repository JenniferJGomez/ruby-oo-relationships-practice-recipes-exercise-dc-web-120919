require_relative '../config/environment.rb'
require 'pry'

#User instances takes in a name:
bob = User.new("Bob")
sean = User.new("Sean")
jenny = User.new("Jenny")

#Recipe instances:
omelette = Recipe.new("Omelette")
omelette = Recipe.new("Omelette")
grilled_cheese = Recipe.new("Grilled Cheese")


#RecipeCards instances, :date, :rating, :user, :recipe 
recipe1 = RecipeCard.new("January 1st", 4, bob, grilled_cheese)
recipe2 = RecipeCard.new("April 2nd", 3, sean, grilled_cheese)
recipe3 = RecipeCard.new("October 31st", 5, jenny, omelette)

#Ingredients instances
cheese = Ingredient.new("cheese")
bread = Ingredient.new("bread")
eggs = Ingredient.new("eggs")

#Allergy instances
lactose = Allergy.new("Lactose Intolerence", bob, cheese)
gluten_free = Allergy.new("Gluten Free", sean, bread)
egg_free = Allergy.new("Egg free", jenny, eggs)

#Recipe Ingredients
omelette_cheese = RecipeIngredient.new(eggs, sean)
omelette_plain = RecipeIngredient.new(eggs, jenny)
cheese_sandwich = RecipeIngredient.new(cheese, bob)

puts Recipe.most_popular