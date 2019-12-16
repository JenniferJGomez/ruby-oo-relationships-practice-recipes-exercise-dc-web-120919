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
recipe2 = RecipeCard.new("April 2nd", 3, sean, omelette)
recipe3 = RecipeCard.new("October 31st", 5, jenny, omelette)

Recipe.most_popular 