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
     

      def self.get_one(plant_id)
        puts "Querying..."
        HTTParty.get("#{TREFLE_API_URL}/plants/#{plant_id}", query: { token: TREFLE_TOKEN })
      end

end 
