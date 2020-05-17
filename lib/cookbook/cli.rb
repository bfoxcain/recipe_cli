## responsible for handling inputs and output to user
class Cli
    def run
        puts "  "
        puts " Hello and welcome to my Recipe search app."
        puts "  "
        puts "Enter an ingredient to see recipes with that ingredient."
        puts "  "
        @ingredient = gets.strip.downcase
        Api.get_recipe(@ingredient)
        print_recipes(Recipe.all)
        prompt_user
        inputs = gets.strip.downcase
        while inputs != "exit"
            
            recipes = Recipe.select_by_ingredient(@ingredient)
            if inputs == "list"
                
                print_recipes(recipes)
                
            elsif inputs.to_i > 0 && inputs.to_i < recipes.length
                recipe = recipes[inputs.to_i - 1]
                Api.getRecipeDetails(recipe)
                
            #elsif
            else
                puts "I do not understand, please try again."
            end
            prompt_user
            inputs = gets.strip.downcase
        end
        puts "Thank you for using my app."

    end

    def print_recipes(recipes)
        puts "  "
        puts "Here are the recipes with #{@ingredient}"
        recipes.each.with_index(1) do |recipe, index|
            puts "#{index}. #{recipe.name}"
        end
        puts "  " 
    end

    def prompt_user
        puts "  "
        puts "Select a number to see the site for the recipe: type 'list' to see the list again, 'ingredient' to select a new ingredient, or 'exit' to exit."
        puts "  "
    end
end
