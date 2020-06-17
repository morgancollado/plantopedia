class Plantopedia::Plants

    attr_accessor( :common_name, 
        :family_common_name, 
        :scientific_name, 
        :usda_name, 
        :fruit_conspicuous, 
        :coppice_potential,
        :fruit_seed_period_end, 
        :resprout_ability, 
        :propagated_by_sprigs, 
        :propagated_by_cuttings, 
        :fodder_product,
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
        :fuelwood_product, 
        :forst_free_days_minimum, 
        :growth_habit, 
        :protein_potential, 
        :planting_density_per_acre_maximum
        :root_depth_minimum_inches, 
        :adapted_to_medium_textured_soils, 
        :drought_tolerance, 
        :salinity_tolerance,
        :fertility_requirement
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
        :seeds_per_pount,
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
        :temperature_minimum_deg_f
        :seed_spread_rate
    ) 




    @@all = []

    def initiatlize(name, id, url)
        @name, @id, @url = name, id, url
        save
    end 

    def save 
        @@all << self
    end 



end 