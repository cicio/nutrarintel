class Food < ActiveRecord::Base
<<<<<<< HEAD
=======
	self.primary_key = 'nutrient_databank_number'
	validates :food_group_code, presence: true, uniqueness: true
    validates :long_description, presence: true
    validates :short_description, presence: true
    validates :nutrient_databank_number, presence: true, uniqueness: true

    belongs_to :foodgroup, class_name: 'Foodgroup', foreign_key: 'food_group_code'
    
    has_many :nutrients, class_name: 'Nutrient', foreign_key: 'nutrient_databank_number'

    has_many :nutrient_definitions, class_name: 'NutrientDefinition', 
          through: :nutrients

>>>>>>> edge22
end
