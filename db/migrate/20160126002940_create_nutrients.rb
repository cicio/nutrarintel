class CreateNutrients < ActiveRecord::Migration
  def change
    create_table :nutrients, id: false do |t|
    	t.string :nutrient_databank_number, null: false, uniq: true
    	t.string :nutrient_number, null: false, uniq: true
    	t.decimal :nutrient_value, null: false
    	t.decimal :num_data_points, null: false
    	t.decimal :std_err
    	t.string :source_code, null: false
    	t.string :data_deriv_code
    	t.string :ref_ndb_no
    	t.string :added_nutr_mark
    	t.integer :num_studies
    	t.decimal :min
    	t.decimal :max
    	t.decimal :degrees_of_freedom
    	t.decimal :low_eb
    	t.decimal :up_eb
    	t.string :statistical_comment
    	t.string :addmod_date
    	t.string :confidence_code
    	t.timestamps null: false

    	

    
    end
  end
end
