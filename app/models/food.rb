class Food < ActiveRecord::Base
	self.primary_key = 'nutrition_databank_number'
	validates :food_group_code, presence: true
    validates :long_description, presence: true
    validates :short_description, presence: true

    belongs_to :foodgroup, class_name: 'Foodgroup', foreign_key: 'food_group_code'
    
    has_many :nutrients, class_name: 'Nutrient', foreign_key: :nutrient_databank_number

    has_many :nutrient_definitions, class_name: 'NutrientDefinition', 
          through: :nutrients

end
