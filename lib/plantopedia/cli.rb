require 'pry'

class Plantopedia::CLI

    def start 
        welcome
        instructions
        main_loop
    end 
        


    def get_plants
        input = gets.strip.downcase
        commands = ["exit"]
        return input.downcase if commands.include?(input.downcase)
        Plantopedia::ApiManager.get_all(input)
        Plantopedia::Plants.all.each_with_index do |plant, index|
            puts "#{index + 1}. #{plant.common_name}"
        end 
    end 

    def welcome
        puts "\n\n\n"
        puts "Welcome to your Plantopedia!"
        puts "\n\n\n"
    end 

    def main_loop
        #loop do 
            get_plants
         #   case input
          #  when "exit"
           #     break 
            #end 
        #else 
    end 

    def instructions

       puts <<-INST
Please enter the name of the plant you wish to search or type 'exit' to exit.

        INST

    end 
end

#binding.pry