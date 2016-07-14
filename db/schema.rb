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

ActiveRecord::Schema.define(version: 20160713033319) do

  create_table "aircrafts", force: :cascade do |t|
    t.string   "name"
    t.string   "designation"
    t.integer  "numbers_built"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "american_aircrafts", force: :cascade do |t|
    t.string   "name"
    t.string   "designation"
    t.text     "description"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "american_armors", force: :cascade do |t|
    t.string   "name"
    t.string   "designation"
    t.integer  "numbers_built"
    t.text     "description"
    t.text     "content"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "american_navy_vessels", force: :cascade do |t|
    t.string   "name"
    t.string   "designation"
    t.text     "description"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "american_units", force: :cascade do |t|
    t.string   "name"
    t.string   "designation"
    t.text     "description"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.integer  "total_strength"
    t.integer  "aircraft"
    t.integer  "armored_vehicles"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "german_aircrafts", force: :cascade do |t|
    t.string   "name"
    t.string   "designation"
    t.text     "description"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "german_armors", force: :cascade do |t|
    t.string   "name"
    t.string   "designation"
    t.integer  "numbers_built"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "german_navy_vessels", force: :cascade do |t|
    t.string   "name"
    t.string   "designation"
    t.text     "description"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "german_units", force: :cascade do |t|
    t.string   "name"
    t.string   "designation"
    t.text     "description"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "navy_vessels", force: :cascade do |t|
    t.string   "name"
    t.string   "designation"
    t.integer  "strength"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tanks", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "designation"
    t.integer  "numbers_built"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "united_states", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "units", force: :cascade do |t|
    t.string   "name"
    t.string   "designation"
    t.text     "weapons_used"
    t.integer  "strength"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
