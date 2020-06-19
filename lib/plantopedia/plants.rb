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
        <<-DESC
common name: #{self.common_name}    family common name: #{self.family_common_name}   scientific name: #{self.scientific_name}
fruit conspicuous: #{self.fruit_conspicuous}    fall conspicuous: #{self.fall_conspicuous}  flower conspicuous: #{self.flower_conspicuous}  
propagated by container: #{self.propagated_by_container} propagated by sprigs: #{self.propagated_by_sprigs}   propagated by cuttings: #{self.propagated_by_cuttings}
propagated_by_tubers: #{self.propagated_by_tubers}  propagated_by_corms: #{self.propagated_by_corms}    propagated_by_seeds: #{self.propagated_by_seeds}
propagated by bulbs: #{self.propagated_by_bulbs}    active_growth_period: #{self.active_growth_period}

precipitation minimum: #{self.precipitation_minimum}    precipitation maximum: #{self.precipitation_maximum}    moisture use: #{self.moisture_use}
nitrogen fixation: #{self.nitrogen_fixation}       fire resistance: #{self.fire_resistance}    fire tolerance: #{fire_tolerance}    
lifespan: #{self.lifespan}      height at base age max in ft: #{self.height_at_base_age_max_ft}     height mature in ft: #{self.height_mature_ft}
pH minimum: #{self.ph_minimum}      pH maximum: #{self.ph_maximum}      growth_rate: #{self.growth_rate}    bloom_period: #{self.bloom_period}

fertility_requirement: #{self.fertility_requirement}    resprout ability: #{self.resprout_ability}  fruit seed period end: #{self.fruit_seed_period_end}
cold_stratification_required: #{self.cold_stratification_required}     frost free days minimum: #{self.frost_free_days_minimum}   temperature_minimum_deg_f: #{self.temperature_minimum_deg_f}
planting density per acre maximum: #{self.planting_density_per_acre_maximum}    planting density per acre minimum: #{self.planting_density_per_acre_minimum}    root_depth_minimum_inches: #{self.root_depth_minimum_inches}
adapted to medium textured soils: #{self.adapted_to_medium_textured_soils}      adapted to fine textured soils: #{self.adapted_to_fine_textured_soils}  adapted to coarse textured soils: #{self.adapted_to_coarse_textured_soils}

drought tolerance: #{self.drought_tolerance}    salinity tolerance: #{self.salinity_tolerance}  anaerobic tolerance: #{self.anaerobic_tolerance}
fruit color: #{self.fruit_color}    foliage color: #{self.foliage_color}    flower color: #{self.flower_color}  shade_tolerance: #{self.shade_tolerance}
foliage texture: #{self.foliage_texture}  commercial availbility: #{self.commercial_availbility}    coppice potential: #{self.coppice_potential}
palatable human: #{self.palatable_human}    palatable browse animal: #{self.palatable_browse_animal}    palatable graze animal: #{self.palatable_graze_animal}

seeds per pound: #{self.seeds_per_pound}    fruit seed persistence: #{self.fruit_seed_persistence}      fruit seed abundance: #{self.fruit_seed_abundance} 
seed spread rate: #{self.seed_spread_rate}     toxicity: #{self.toxicity} 
seedling vigor: #{self.seedling_vigor}         

native status: #{self.native_status}    growth habit: #{self.growth_habit} 
    
    DESC
    end 
    
    def save 
        @@all << self
    end 
    



end 
binding.pry