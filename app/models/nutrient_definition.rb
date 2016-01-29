class NutrientDefinition < ActiveRecord::Base
	self.primary_key = 'nutrient_number'
	has_many :nutrients, class_name: 'Nutrient',
      		foreign_key: 'nutrient_number',
      		dependent: :nullify

    has_many :foods, class_name: 'Food',
      		through: :nutrients

    validates :nutrient_number, presence: true, uniqueness: true
    validate :units, presence: true
    validate :nutrient_description, presence: true
    validate :number_decimal_places, presence: true
    validate :sort_record_order, presence: true, numericality: true

end




