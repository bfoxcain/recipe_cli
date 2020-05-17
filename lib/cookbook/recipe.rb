class Recipe
##responsible for making recipes.
attr_accessor :name, :ingredient, :href
@@all = []
    def initialize(title, href, ingredients)
        @name = title
        @href = href
        @ingredient = ingredients

        @@all << self
    end
    
    def self.all
        @@all
    end

    def self.select_by_ingredient(ingredient)
        self.all.select {|recipe| recipe.ingredient == ingredient}
    end
end