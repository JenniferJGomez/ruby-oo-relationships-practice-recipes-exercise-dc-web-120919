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


end