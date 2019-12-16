class User

    attr_accessor :name, :allergy, :recipes 

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end

    def self.all
        @@all
    end

    def cards
        RecipeCard.all.select {|card| card.user == self}
    end 
    
    def recipes
        self.cards.map do |rc|
            rc.recipes
        end
    end


end