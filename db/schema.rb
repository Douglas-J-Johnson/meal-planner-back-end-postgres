# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_18_173249) do

  create_table "days", force: :cascade do |t|
    t.string "date"
    t.string "week_day"
    t.integer "week_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["week_id"], name: "index_days_on_week_id"
  end

  create_table "food_items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "list_entries", force: :cascade do |t|
    t.integer "quantity"
    t.string "unit_of_measure"
    t.integer "list_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["list_id"], name: "index_list_entries_on_list_id"
  end

  create_table "list_entry_list_items", force: :cascade do |t|
    t.integer "list_entry_id", null: false
    t.integer "list_items_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["list_entry_id"], name: "index_list_entry_list_items_on_list_entry_id"
    t.index ["list_items_id"], name: "index_list_entry_list_items_on_list_items_id"
  end

  create_table "list_items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.integer "week_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["week_id"], name: "index_lists_on_week_id"
  end

  create_table "meal_food_items", force: :cascade do |t|
    t.integer "meal_id", null: false
    t.integer "food_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_item_id"], name: "index_meal_food_items_on_food_item_id"
    t.index ["meal_id"], name: "index_meal_food_items_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.integer "day_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["day_id"], name: "index_meals_on_day_id"
  end

  create_table "weeks", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "days", "weeks"
  add_foreign_key "list_entries", "lists"
  add_foreign_key "list_entry_list_items", "list_entries"
  add_foreign_key "list_entry_list_items", "list_items", column: "list_items_id"
  add_foreign_key "lists", "weeks"
  add_foreign_key "meal_food_items", "food_items"
  add_foreign_key "meal_food_items", "meals"
  add_foreign_key "meals", "days"
end
