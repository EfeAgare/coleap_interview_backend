# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_04_19_114726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "car_ranges", force: :cascade do |t|
    t.string "unit", null: false
    t.string "distance", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string "make", null: false
    t.string "model", null: false
    t.string "colors", default: [], null: false, array: true
    t.string "photo", null: false
    t.string "price", null: false
    t.bigint "car_range_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_range_id"], name: "index_cars_on_car_range_id"
  end

  add_foreign_key "cars", "car_ranges"
end
