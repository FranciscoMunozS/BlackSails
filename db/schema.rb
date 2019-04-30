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

ActiveRecord::Schema.define(version: 2019_03_19_132622) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "guarantees", force: :cascade do |t|
    t.integer "correlative"
    t.string "income_number"
    t.date "income_date"
    t.string "income_applicant"
    t.string "borrower_name"
    t.string "borrower_id"
    t.string "bank_name"
    t.string "guarantee_number"
    t.string "guarantee_type"
    t.integer "value_guarantee"
    t.string "currency_guarantee"
    t.date "due_date"
    t.string "state"
    t.string "bail"
    t.string "detail"
    t.string "bip"
    t.string "devolution_number"
    t.date "devolution_date"
    t.string "devolution_return"
    t.string "sectorialist_devolution"
    t.string "email"
    t.string "technical_unit"
    t.text "observation"
    t.datetime "created_at", null: false
    t.date "updated_at", null: false
    t.date "notification_date"
    t.integer "notification"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
