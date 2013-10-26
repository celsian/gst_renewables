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

ActiveRecord::Schema.define(version: 20131025005815) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pv_array_tests", force: true do |t|
    t.integer  "pv_commission_id"
    t.string   "test_number"
    t.boolean  "initial_verification"
    t.string   "inspector"
    t.string   "test_instruments"
    t.string   "combiner"
    t.string   "mfg"
    t.string   "combiner_exterior_pic"
    t.string   "combiner_interior_pic"
    t.string   "combiner_flir_pic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pv_array_tests", ["pv_commission_id"], name: "index_pv_array_tests_on_pv_commission_id", using: :btree

  create_table "pv_commissions", force: true do |t|
    t.string   "reference_number"
    t.string   "owner"
    t.string   "dc_system_size"
    t.string   "ac_system_size"
    t.string   "module_make_model"
    t.string   "module_quantity"
    t.string   "combiner_make_model"
    t.string   "recombiner_make_model"
    t.string   "inverter_make_model"
    t.string   "inverter_serial_number"
    t.string   "das_system_manufacturer"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pv_commissions", ["project_id"], name: "index_pv_commissions_on_project_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
