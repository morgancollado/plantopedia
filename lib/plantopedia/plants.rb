class Plantopedia::Plants

    attr_accessor( :common_name, 
        :name,
        :id,
        :class,
        :cultivars,
        :division,
        :duration,
        :growth,
        :flower,
        :foliage,
        :products,
        :fruit_or_seed,
        :propagation,
        :seed,
        :soils_adaptation,
        :specifications,
        :sub_species,
        :varieties,
        :bare_root,
        :family_common_name, 
        :scientific_name, 
        :fruit_conspicuous, 
        :coppice_potential,
        :fruit_seed_period_end, 
        :resprout_ability, 
        :propagated_by_sprigs, 
        :propagated_by_cuttings, 
        :precipitation_minimum,
        :toxicity, 
        :foliage_texture,
        :fruit_seed_abundance, 
        :fire_resistance, 
        :height_at_base_age_max_ft,
        :fall_conspicuous,
        :fire_tolerance, 
        :ph_minimum, 
        :propagated_by_container, 
        :flower_conspicuous, 
        :native_status,
        :frost_free_days_minimum, 
        :growth_habit, 
        :planting_density_per_acre_maximum,
        :root_depth_minimum_inches, 
        :adapted_to_medium_textured_soils, 
        :drought_tolerance, 
        :salinity_tolerance,
        :fertility_requirement,
        :foliage_color,
        :nitrogen_fixation, 
        :commercial_availbility, 
        :anaerobic_tolerance,
        :lifespan, 
        :precipitation_maximum,
        :planting_density_per_acre_minimum, 
        :height_mature_ft,
        :ph_maximum, 
        :shade_tolerance,
        :palatable_browse_animal,
        :seeds_per_pound,
        :adapted_to_fine_textured_soils,
        :growth_rate,
        :propagated_by_seeds,
        :fruit_color,
        :seedling_vigor,
        :cold_stratification_required,
        :palatable_graze_animal,
        :bloom_period, 
        :fruit_seed_persistence,
        :propagated_by_bulbs,
        :active_growth_period,
        :flower_color,
        :palatable_human,
        :propagated_by_tubers, 
        :moisture_use, 
        :adapted_to_coarse_textured_soils,
        :propagated_by_corms,
        :temperature_minimum_deg_f,
        :seed_spread_rate
    ) 

    @@all = []



    def self.all
        @@all
    end 
    
    def self.clear
        @@all.clear
    end 

    def self.mass_create_from_api(plantarr)
        plantarr.each do |planthash|
            self.new(planthash["common_name"],planthash["id"], planthash["scientific_name"])
        end 
    end 

    def initialize(common_name, id, scientific_name)
        @common_name, @id, @scientific_name = common_name, id, scientific_name
        save
    end 

    def full_details
        puts "---------------------------------------------------"
        puts  "common name: #{self.common_name}    family common name: #{self.family_common_name}   scientific name: #{self.scientific_name}"
        puts "---------------------------------------------------"
        puts "Propagation Data"
        self.propagation.each {|key, value| puts "\n#{key} propagation is #{value}\n" unless value.nil?} 
        puts "---------------------------------------------------"    
        puts  "duration: #{self.duration}"   
        puts "---------------------------------------------------"   
        puts "Growth Data" 
        self.growth.each do |key, value| 
            if key == "planting_density_maximum" || key == "planting_density_minimum"
                puts "\n#{key} is #{value["acre"]} acre(s)\n" unless value["acre"].nil?
            elsif key == "precipitation_maximum" || key == "precipitation_minimum" || key == "root_depth_minimum"
                puts "\n#{key} is #{value["inches"]} inches\n" unless value["inches"].nil?
            elsif key == "temperature_minimum"
                puts "\n#{key} is #{value["deg_f"]} fahrenheit\n" unless value["def_f"].nil?
            else
            puts "\n#{key} is #{value}\n" unless value.nil?
            end 
        end 
        puts "---------------------------------------------------"   
        puts "Flower Data"
        self.flower.each {|key, value| puts "\nflower #{key} is #{value}\n" unless value.nil?}
        puts "---------------------------------------------------"
        puts "Foliage Data"
        self.foliage.each {|key, value| puts "\nfoliage #{key} is #{value}\n"unless value.nil?}   
        puts "---------------------------------------------------"   
        puts "Products Data"
        self.products.each {|key, value| puts "\n#{key} product is #{value}\n" unless value.nil?}  
        puts "---------------------------------------------------"   
        puts "Fruit and Seed Data"
        self.fruit_or_seed.each {|key, value| puts "\nfruit or seed #{key} is #{value}\n" unless value.nil?}
        puts "---------------------------------------------------"   
        puts "Seed Data" 
        self.seed.each {|key, value| puts "\n#{key} is #{value}\n" unless value.nil?}
        puts "---------------------------------------------------"   
        puts "Soils Adaptation Data"
        self.soils_adaptation.each {|key, value| puts "\n#{key} soil adaptation is #{value}\n" unless value.nil?}
        puts "---------------------------------------------------"   
        puts "Specification Data"
        self.specifications.each do |key, value| 
            if key == "mature_height" || key == "max_height_at_base_age"
                puts "\n#{key} is #{value["ft"]} feet\n" unless value["ft"].nil?
        else 
            puts "\n#{key} is #{value}\n" unless value.nil? 
        end 
       end 
        puts "---------------------------------------------------"        
    end
    
    def save 
        @@all << self
    end 

end 
