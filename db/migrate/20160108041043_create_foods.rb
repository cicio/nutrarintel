class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :nutrient_databank_id
      t.references :food_group_code, index: true, foreign_key: true
      t.text :long_description
      t.text :short_description
      t.string :common_name
      t.string :manufacturer
      t.string :survey
      t.text :refuse_description
      t.string :refuse
      t.string :scientific_name
      t.decimal :nitrogen_factor
      t.decimal :protein_factor
      t.decimal :fat_factor
      t.decimal :carbohydrate_factor

      t.timestamps null: false
    end
    add_index :foods, :nutrient_databank_id
  end
end
