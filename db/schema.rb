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

ActiveRecord::Schema.define(version: 2020_02_07_134356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buses", force: :cascade do |t|
    t.string "service_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stops", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "timetables", force: :cascade do |t|
    t.bigint "bus_id", null: false
    t.time "departure_time"
    t.time "arrival_time"
    t.bigint "departure_stop_id", null: false
    t.bigint "arrival_stop_id", null: false
    t.boolean "is_operational_weekday"
    t.boolean "is_operational_weekend"
    t.boolean "is_operational_term"
    t.boolean "is_operational_winter"
    t.boolean "is_operational_easter"
    t.boolean "is_operational_summer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["arrival_stop_id"], name: "index_timetables_on_arrival_stop_id"
    t.index ["bus_id"], name: "index_timetables_on_bus_id"
    t.index ["departure_stop_id"], name: "index_timetables_on_departure_stop_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "timetables", "buses"
  add_foreign_key "timetables", "stops", column: "arrival_stop_id"
  add_foreign_key "timetables", "stops", column: "departure_stop_id"
end
