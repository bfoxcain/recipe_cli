class Recipe
##responsible for making recipes.
attr_accessor :name, :ingredient, :recipe_site
@@all = []
    def initialize(title, href, ingredient)
        @name = title
        @recipe_site = href
        @ingredient = ingredient

        @@all << self
    end
    
    def self.all
        @@all
    end

    def self.select_by_ingredient(ingredient)
        self.all.select {|recipe| recipe.ingredient == ingredient}
    end
end