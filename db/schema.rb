# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160126002940) do

  create_table "foodgroups", id: false, force: :cascade do |t|
    t.string   "food_group_code",        null: false
    t.text     "food_group_description", null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "foodgroups", ["food_group_code"], name: "index_foodgroups_on_food_group_code"

  create_table "foods", id: false, force: :cascade do |t|
    t.string   "nutrient_databank_number", null: false
    t.string   "food_group_code",          null: false
    t.text     "long_description",         null: false
    t.string   "short_description",        null: false
    t.text     "common_name"
    t.string   "manufacturer"
    t.string   "survey"
    t.text     "refuse_description"
    t.string   "refuse"
    t.string   "scientific_name"
    t.decimal  "nitrogen_factor"
    t.decimal  "protein_factor"
    t.decimal  "fat_factor"
    t.decimal  "carbohydrate_factor"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "foods", ["food_group_code"], name: "index_foods_on_food_group_code"

  create_table "nutrient_definitions", id: false, force: :cascade do |t|
    t.string  "nutrient_number",       null: false
    t.string  "units",                 null: false
    t.string  "tagname"
    t.string  "nutrient_description",  null: false
    t.string  "number_decimal_places", null: false
    t.integer "sort_record_order",     null: false
  end

  add_index "nutrient_definitions", ["nutrient_number"], name: "index_nutrient_definitions_on_nutrient_number"

  create_table "nutrients", id: false, force: :cascade do |t|
    t.string   "nutrient_databank_number", null: false
    t.string   "nutrient_number",          null: false
    t.decimal  "nutrient_value",           null: false
    t.decimal  "num_data_points",          null: false
    t.decimal  "std_err"
    t.string   "source_code",              null: false
    t.string   "data_deriv_code"
    t.string   "ref_ndb_no"
    t.string   "added_nutr_mark"
    t.integer  "num_studies"
    t.decimal  "min"
    t.decimal  "max"
    t.decimal  "degrees_of_freedom"
    t.decimal  "low_eb"
    t.decimal  "up_eb"
    t.string   "statistical_comment"
    t.string   "addmod_date"
    t.string   "confidence_code"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "nutrients", ["nutrient_databank_number"], name: "index_nutrients_on_nutrient_databank_number"
  add_index "nutrients", ["nutrient_number"], name: "index_nutrients_on_nutrient_number"

end
