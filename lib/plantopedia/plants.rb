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
            self.new(planthash["common_name"],planthash["id"])
        end 
    end 

    def initialize(common_name, id)
        @common_name, @id = common_name, id
        save
    end 

    def full_details
       puts  <<-DESC
common name: #{self.common_name}    family common name: #{self.family_common_name}   scientific name: #{self.scientific_name}

propagation: #{self.propagation}        

duration: #{self.duration}      

growth: #{self.growth}

flower: #{self.flower}     

foliage:#{self.foliage}     

products: #{self.products}

fruit or seed: #{self.fruit_or_seed}       

seed: #{self.seed}      

soils adaptation: #{self.soils_adaptation}

specifications: #{self.specifications}
    
    DESC
    end 
    
    def save 
        @@all << self
    end 
    



end 
