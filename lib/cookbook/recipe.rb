class Recipe
##responsible for making recipes.
attr_accessor name, :ingredient, :recipe_site
@@all = []
    def initialize(title, href)
        @name = title
        @recipe_site = href

        @@all << self
    end
    
    def self.all
        @@all
    end

end