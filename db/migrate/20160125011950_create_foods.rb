class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods, id: false, primary_key: :nutrient_databank_number do |t|
      t.string :nutrient_databank_number, null: false
      t.string :food_group_code, index: true
      t.text :long_description, null: false
      t.string :short_description, null: false
      t.text :common_name
      t.string :manufacturer
      t.string :survey
      t.text :refuse_description
      t.string :refuse
      t.string :scientific_name
      t.decimal :nitrogen_factor
      t.decimal :protein_factor
      t.decimal :fat_factor
      t.decimal :carbohydrate_factor
    end
  end
end
