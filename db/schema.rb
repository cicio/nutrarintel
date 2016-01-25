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

ActiveRecord::Schema.define(version: 20160125011950) do

  create_table "foods", id: false, force: :cascade do |t|
    t.string  "nutrient_databank_number", null: false
    t.string  "food_group_code"
    t.text    "long_description",         null: false
    t.string  "short_description",        null: false
    t.text    "common_name"
    t.string  "manufacturer"
    t.string  "survey"
    t.text    "refuse_description"
    t.string  "refuse"
    t.string  "scientific_name"
    t.decimal "nitrogen_factor"
    t.decimal "protein_factor"
    t.decimal "fat_factor"
    t.decimal "carbohydrate_factor"
  end

  add_index "foods", ["food_group_code"], name: "index_foods_on_food_group_code"

end
