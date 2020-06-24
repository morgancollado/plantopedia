require 'pry'

class Plantopedia::CLI

    def start 
        welcome
        main_loop
    end 
        


    def get_plants
        input = gets.strip.downcase
        Plantopedia::ApiManager.get_all(input)
        Plantopedia::Plants.all.each_with_index do |plant, index|
            if plant.common_name.nil? || plant.common_name.empty?
                puts  "#{index + 1}. #{plant.scientific_name}"
            else puts "#{index + 1}. #{plant.common_name}" 
            end 
        end 
    end 

    def get_and_display_specific_plant
        puts "Which plant would you like to learn more about?"
        input = gets.strip.downcase
        if input.to_i.between?(1, Plantopedia::Plants.all.length)
            index = input.to_i - 1
            plant_obj = Plantopedia::Plants.all[index]
            Plantopedia::ApiManager.get_one(plant_obj)
            puts plant_obj.full_details
            puts "press enter/return to continue"
            gets
       else 
            puts "Please make a valid selection from the numbers above."
            return "invalid"
        end 
    end 

    def welcome
        puts "\n\n\n"
        puts "Welcome to your Plantopedia!"
        puts "\n\n\n"
    end 

    def main_loop
        loop do 
            instructions
            get_plants
            get_and_display_specific_plant
            puts "Would you like to run another search? y/n"
            input = gets.strip.downcase
           case input
            when "n"
               break
            when "y"
                Plantopedia::Plants.all.clear
                next
           end 
        end 
    end 

    def instructions

       puts <<-INST
Please enter the name of the plant you wish to search.
Note: Some plant data my be incomplete. 

        INST

    end 
end

#binding.pry