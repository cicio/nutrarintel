class Nutrient < ActiveRecord::Base
	self.primary_key = 'nutrient_number'
	
	belongs_to :foods, class_name: 'Food', 
		foreign_key: 'nutrient_databank_number'
   	
   	belongs_to :nutrient_definitions, 
   		class_name: 'NutrientDefinition', 
   		foreign_key: 'nutrient_number'
    
    validates :nutrient_databank_number, presence: true, uniqueness: true, length: { maximum: 5}
    validates :nutrient_number, presence: true, uniqueness: true
    validates :nutrient_value, presence: true
    validates :num_data_points, presence: true
    validates :source_code, presence: true
 end
