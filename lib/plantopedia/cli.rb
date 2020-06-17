class Plantopedia::CLI


    def get_plants(plant)
        Plantopedia::ApiManager.get_all(plant)
    end 

    def introduction
        puts "\n\n\n"
        puts "Welcome to your Plantopedia!"
        puts "\n\n\n"
    end 
end