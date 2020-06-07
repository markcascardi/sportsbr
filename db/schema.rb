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

ActiveRecord::Schema.define(version: 20200607032707) do

  create_table "athletes", force: :cascade do |t|
    t.integer "team_id"
    t.string  "firstname"
    t.string  "lastname"
    t.date    "birthdate"
    t.string  "number"
    t.string  "year"
    t.string  "height"
    t.integer "weight"
    t.string  "city"
    t.string  "state"
    t.string  "high_school"
    t.string  "ig_handle"
    t.text    "biography"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.string "gender"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "sport_id"
    t.integer "season_id"
  end

  create_table "user_notes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "athlete_id"
    t.text    "note"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

end
