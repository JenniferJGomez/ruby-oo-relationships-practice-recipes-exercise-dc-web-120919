class Allergy

    attr_accessor :name, :user, :ingredient 

    @@all = []

    def initialize(name, user, ingredient)
        @name = name
        @user = user
        @ingredeient = ingredient
        @@all << self
    end


end