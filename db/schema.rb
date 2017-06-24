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

ActiveRecord::Schema.define(version: 20170624223131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "name", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "code", default: "", null: false
    t.string "url", default: "", null: false
    t.string "logo_url", default: "", null: false
    t.text "description"
    t.index ["email"], name: "index_companies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true
  end

  create_table "institutions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_institutions_on_email", unique: true
    t.index ["reset_password_token"], name: "index_institutions_on_reset_password_token", unique: true
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "city"
    t.string "country"
    t.text "description"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_jobs_on_company_id"
  end

  create_table "seekers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "country", default: "", null: false
    t.string "city", default: "", null: false
    t.string "language", default: "", null: false
    t.datetime "has_permit"
    t.bigint "institution_id"
    t.index ["institution_id"], name: "index_seekers_on_institution_id"
  end

  add_foreign_key "jobs", "companies"
  add_foreign_key "seekers", "institutions"
end
