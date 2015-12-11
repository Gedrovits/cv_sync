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

ActiveRecord::Schema.define(version: 20151211103343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.string   "name_or_title"
    t.integer  "experience_id"
    t.string   "proof_of_concept"
    t.date     "achievement_date"
    t.string   "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "certifications", force: :cascade do |t|
    t.string   "name_or_title"
    t.string   "authority"
    t.string   "license"
    t.string   "url"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "is_this_cert_expires", default: true
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name_or_title"
    t.string   "location"
    t.integer  "industry_or_market"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name_or_title"
    t.string   "contact_url"
    t.integer  "contact_type"
    t.string   "description"
    t.integer  "status"
    t.integer  "privacy"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "curriculum_vitaes", force: :cascade do |t|
    t.integer  "current_position_id"
    t.integer  "previous_position_id"
    t.string   "what_i_am_looking_for"
    t.string   "personal_statement_or_summary"
    t.integer  "preferred_industry_or_market"
    t.integer  "preferred_working_time"
    t.integer  "preferred_minimum_salary"
    t.string   "preferred_locations"
    t.integer  "status"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "educational_institutions", force: :cascade do |t|
    t.string   "name_or_title"
    t.integer  "education_type"
    t.string   "location"
    t.string   "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "educations", force: :cascade do |t|
    t.integer  "education_institution_id"
    t.string   "degree_or_qualification"
    t.string   "field_of_study"
    t.string   "gpa"
    t.string   "grade"
    t.string   "description"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "status"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "occupation"
    t.string   "description"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "ongoing_or_in_progress", default: true
    t.integer  "experience_type"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "proficiency"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "patents", force: :cascade do |t|
    t.string   "patent_office"
    t.integer  "status"
    t.string   "application_number_or_license"
    t.string   "name_or_title"
    t.date     "issue_filling_date"
    t.string   "patent_url"
    t.string   "description"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "full_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.integer  "age"
    t.date     "birth_date"
    t.integer  "gender"
    t.integer  "marital_status"
    t.integer  "privacy"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name_or_title"
    t.string   "occupation"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "project_url"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "publications", force: :cascade do |t|
    t.string   "name_or_title"
    t.string   "publication_or_publisher"
    t.date     "publication_date"
    t.string   "publication_url"
    t.string   "description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "recommendations", force: :cascade do |t|
    t.string   "name_or_title"
    t.string   "description"
    t.string   "proof_of_concept"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name_or_title"
    t.integer  "category"
    t.integer  "proficiency"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "name_or_title"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tools", force: :cascade do |t|
    t.string   "name_or_title"
    t.integer  "category"
    t.integer  "level_or_experience"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
