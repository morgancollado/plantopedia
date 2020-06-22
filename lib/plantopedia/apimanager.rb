require 'pry'
require 'httparty'

class Plantopedia::ApiManager

    TREFLE_TOKEN = 'TlNXU3pPRXFKTllkQ2I0L0M3TmgwQT09'
    TREFLE_API_URL = 'https://trefle.io/api'

    def self.get_all(search)
        puts "Querying..."
        
        res = HTTParty.get("#{TREFLE_API_URL}/plants", query: { q: search, token: TREFLE_TOKEN })
        Plantopedia::Plants.mass_create_from_api(res)
      end
     

      def self.get_one(plant)
        puts "Querying..."
        
        res = HTTParty.get("#{TREFLE_API_URL}/plants/#{plant.id}", query: { token: TREFLE_TOKEN })
        

        res.each do |key, value| 
          if key == "class"  || key == "division" || key == "family" || key == "genus" || key == "main_species" || key == "fruit_or_seed" || key == "growth" || key == "products" || key == "propagation" || key == "seed" || key == "soils_adaptation" || key == "specifications" || key == "order"
            value.each do |key, value| 
            plant.send(("#{key}="),value) if plant.respond_to?("#{key}") 
            #puts "in the if #{key}, #{value}"
            #puts plant.respond_to?("#{key}") 
            end 
            else 
             plant.send(("#{key}="),value) if plant.respond_to?("#{key}")
             #puts "in the else #{key}, #{value}"
             #puts plant.respond_to?("#{key}") 
           end 
          end 
        end 

end 

