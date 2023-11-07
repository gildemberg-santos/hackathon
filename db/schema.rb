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

ActiveRecord::Schema[7.0].define(version: 2023_11_07_054441) do
  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leads", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "country"
    t.string "state"
    t.string "city"
    t.integer "age"
    t.string "sex"
    t.string "communication_channel"
    t.string "source_of_acquisition"
    t.integer "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "income"
    t.integer "years_employment"
    t.string "marital_status"
    t.boolean "have_children", default: false
    t.integer "bank_score"
    t.boolean "already_have_a_vehicle", default: false
    t.index ["company_id"], name: "index_leads_on_company_id"
  end

  create_table "sales", force: :cascade do |t|
    t.integer "amount"
    t.boolean "sold"
    t.integer "vehicle_id", null: false
    t.integer "lead_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lead_id"], name: "index_sales_on_lead_id"
    t.index ["vehicle_id"], name: "index_sales_on_vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "leads", "companies"
  add_foreign_key "sales", "leads"
  add_foreign_key "sales", "vehicles"
end
