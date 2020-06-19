class Plantopedia::CLI

    def start 
        welcome
        instructions
        main_loop
    end 
        


    def get_plants(plant)
        Plantopedia::ApiManager.get_all(plant)
    end 

    def welcome
        puts "\n\n\n"
        puts "Welcome to your Plantopedia!"
        puts "\n\n\n"
    end 

    def main_loop
        puts "in the main loop heck yeah"

    end 

    def instructions

       puts <<-INST
Please enter the name of the plant you wish to search or type 'exit' to exit.

        INST

    end 
end