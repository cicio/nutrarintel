class CreateFoodgroups < ActiveRecord::Migration
  def change
  	 create_table :foodgroups, id: false, primary_key: :food_groupe_code do |t|
      t.string :food_group_code, null: false, index: true, uniq: true
      t.text :food_group_description, null: false
      t.timestamps null:false

      
    end
  end
end
