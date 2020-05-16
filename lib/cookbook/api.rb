
class Api
   def self.get_recipe(ingredient)
    url = "http://www.recipepuppy.com/api/?i=#{ingredient}"
    response = Net::HTTP.get(URI(url))
    recipes = JSON.parse(response)["results"]
    recipes.each do |recipe_info|
        Recipe.new(recipe_info["title"], recipe_info["href"])
    end
    binding.pry
   end
end
