require 'pry'

class Recipe

    attr_accessor :name, :recipe_ingredients 

    @@all = []

    def initialize(name, recipe_ingredients=nil)
        @name = name
        @recipe_ingredients = recipe_ingredients
        @@all << self
    end

    def self.all
        @@all
    end

    def cards
        RecipeCard.all.select {|card| card.recipe == self}
    end 
    
    def users
        self.cards.map do |rc|
            rc.user
        end
    end

    def user_count
        self.users.count
    end
    
    def self.most_popular
    #Recipe.most_popular 
    #should return the recipe instance with the highest number of users 
    #(the recipe that has the most recipe cards)
            # binding.pry 
    self.all.max_by do |recipe|
        recipe.user_count    
        end.name
    end
end



        
