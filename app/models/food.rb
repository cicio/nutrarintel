class Food < ActiveRecord::Base
	validates :food_group_code, presence: true
    validates :long_description, presence: true
    validates :short_description, presence: true

    belongs_to :foodgroup, class_name: 'Foodgroup'

end