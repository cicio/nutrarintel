class CreateNutrientDefinitions < ActiveRecord::Migration
  def change
  	create_table :nutrient_definitions, id: false, primary_key: :nutrient_number do |t|
  		t.string  :nutrient_number, null: false, index: true
      	t.string  :units, null: false
      	t.string  :tagname
      	t.string  :nutrient_description, null: false
      	t.string  :number_decimal_places, null: false
      	t.integer :sort_record_order, null: false
      end
  end
end
