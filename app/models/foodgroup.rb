class Foodgroup < ActiveRecord::Base
	self.primary_key = 'food_group_code'
	has_many :foods, class_name: 'Food',
      		dependent: :destroy, 
      		foreign_key: 'food_group_code',
      		inverse_of: :foodgroups
    validates_associated :foods
    validates :food_group_code, presence: true, uniqueness: true
    validates :food_group_description, presence: true
end
