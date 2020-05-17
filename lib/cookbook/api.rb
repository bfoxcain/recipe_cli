class Api

    def self.get_recipe(ingredient)
    url = "http://www.recipepuppy.com/api/?i=#{ingredient}"
    response = Net::HTTP.get(URI(url))
    recipes = JSON.parse(response)["results"]
    recipes.each do |recipe_info|
        Recipe.new(recipe_info["title"], recipe_info["href"], recipe_info["ingredients"])
        
    end
    end

    def self.getRecipeDetails(recipe)
        url = "http://www.recipepuppy.com/api/?q=#{recipe.href}"
        response = Net::HTTP.get(URI(url))
        binding.pry
   end
end
