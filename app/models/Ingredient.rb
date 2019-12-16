class Ingredient 

    attr_accessor :name, :allergen

    @@all = []

    def initialize(name) 
        @name = name
        @@all << self
    end



end
