## responsible for handling input and output to user
class Cli
    def run
        puts "  "
        puts " Hello and welcome to my Recipe search app."
        puts "  "
        puts "Enter an ingredient to see recipes with that ingredient."
        puts "  "
        @ingredient = gets.strip.downcase
    end
end
