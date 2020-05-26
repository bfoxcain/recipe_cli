class Api

    def self.get_recipe(ingredient)
        #https://api.spoonacular.com/recipes/findByIngredients
        #?apiKey=
        key = ENV["MY_API_KEY"]
        binding.pry
        url = "https://api.spoonacular.com/recipes/findByIngredients?ingredients=#{ingredient}&apiKey=#{key}"
    response = Net::HTTP.get(URI(url))
    recipes = JSON.parse(response)["results"]
    recipes.each do |recipe_info|
        Recipe.new(recipe_info["title"], recipe_info["href"], recipe_info["ingredients"])
        
    end
    end

    def self.getRecipeDetails(recipe)
        
        url = "http://www.recipepuppy.com/api/?q=#{recipes.href}"
        response = Net::HTTP.get(URI(url))
        recipes = JSON.parse(response)["results"]
        
        
        
   end
end
