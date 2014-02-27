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

ActiveRecord::Schema.define(version: 20140226164835) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "infoboxes", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "visual_inspection_id"
    t.integer  "inverter_inspection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "infoboxes", ["inverter_inspection_id"], name: "index_infoboxes_on_inverter_inspection_id", using: :btree
  add_index "infoboxes", ["visual_inspection_id"], name: "index_infoboxes_on_visual_inspection_id", using: :btree

  create_table "inspection_images", force: true do |t|
    t.string   "pic"
    t.integer  "infobox_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inspection_images", ["infobox_id"], name: "index_inspection_images_on_infobox_id", using: :btree

  create_table "inverter_inspections", force: true do |t|
    t.integer  "pv_commission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inverter_inspections", ["pv_commission_id"], name: "index_inverter_inspections_on_pv_commission_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "reference_number"
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

  create_table "string_tests", force: true do |t|
    t.integer  "pv_array_test_id"
    t.string   "name"
    t.string   "array_module"
    t.string   "array_quantity"
    t.string   "array_parameters_voc"
    t.string   "array_parameters_isc"
    t.string   "string_type"
    t.string   "string_rating"
    t.string   "string_d_rating"
    t.string   "string_capacity"
    t.string   "wiring_type"
    t.string   "wiring_insulation"
    t.string   "wiring_size"
    t.string   "string_test_voc"
    t.string   "string_test_isc"
    t.string   "string_test_irradiance"
    t.string   "string_test_voltage"
    t.string   "array_insulation_resistance_test_voltage"
    t.string   "array_insulation_resistance_pos"
    t.string   "array_insulation_resistance_neg"
    t.string   "array_module_flir_pic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "string_tests", ["pv_array_test_id"], name: "index_string_tests_on_pv_array_test_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
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
    t.boolean  "admin",                  default: false
    t.boolean  "editor",                 default: false
    t.string   "reference_number"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "visual_inspections", force: true do |t|
    t.integer  "pv_commission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "visual_inspections", ["pv_commission_id"], name: "index_visual_inspections_on_pv_commission_id", using: :btree

end
