class RecipeIngredient

    attr_accessor :ingredients, :recipe

    @@all = []

    def initialize(ingredients, recipe)
        @ingredeint = ingredients
        @recipe = recipe
        @@all << self
    end


end



