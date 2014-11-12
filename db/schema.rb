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

ActiveRecord::Schema.define(version: 20140824020618) do

  create_table "animals", force: true do |t|
    t.string   "full_name"
    t.integer  "profile_id"
    t.integer  "age"
    t.string   "gender"
    t.decimal  "purr_factor"
    t.string   "weight"
    t.string   "height"
    t.string   "length"
    t.boolean  "fixed"
    t.boolean  "shots"
    t.boolean  "papers"
    t.text     "animal_desc"
    t.integer  "breed_id"
    t.string   "animal_image_file_name"
    t.string   "animal_image_content_type"
    t.integer  "animal_image_file_size"
    t.datetime "animal_image_updated_at"
  end

  create_table "breeds", primary_key: "breed_id", force: true do |t|
    t.string   "breed_name"
    t.string   "breed_desc"
    t.string   "breed_disorder"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dates", force: true do |t|
    t.integer  "month"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "gender"
    t.datetime "birth_date"
    t.boolean  "breeder"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profile_id"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
