require 'pry'

class Recipe

    attr_accessor :name, :recipe_ingredients 

    @@all = []

    def initialize(name, recipe_ingredients)
        @name = name
        @recipe_ingredients = recipe_ingredients
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
    #Recipe.most_popular 
    #should return the recipe instance with the highest number of users 
    #(the recipe that has the most recipe cards)
        cards = RecipeCard.all.select do |card|
            # binding.pry 
            card.recipe
        end
        cards.max {|card1, card2| }
    end
    
end