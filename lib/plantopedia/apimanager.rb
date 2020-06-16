require 'pry'
require 'httparty'

class ApiManager

    TREFLE_TOKEN = 'TlNXU3pPRXFKTllkQ2I0L0M3TmgwQT09'
    TREFLE_API_URL = 'https://trefle.io/api'

    def get_all(search, page = 1)
        puts "Querying..."
        
        HTTParty.get("#{TREFLE_API_URL}/plants", query: { q: search, token: TREFLE_TOKEN, page_size: 40, page: page })
      end
     

      def get_one(plant_id)
        HTTParty.get("#{TREFLE_API_URL}/plants/#{plant_id}", query: { token: TREFLE_TOKEN })
      end

end 

binding.pry