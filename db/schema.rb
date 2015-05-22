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

ActiveRecord::Schema.define(version: 0) do

  create_table "investments", force: true do |t|
    t.integer "project_id"
    t.integer "user_id"
    t.integer "amount"
  end

  add_index "investments", ["project_id"], name: "index_investments_on_project_id"
  add_index "investments", ["user_id"], name: "index_investments_on_user_id"

  create_table "owners", force: true do |t|
    t.string  "name"
    t.string  "summary"
    t.integer "rating"
  end

  create_table "projects", force: true do |t|
    t.string  "name"
    t.string  "location"
    t.text    "summary"
    t.integer "owner_id"
    t.integer "raised"
    t.integer "goal"
    t.string  "image"
  end

  add_index "projects", ["owner_id"], name: "index_projects_on_owner_id"

  create_table "users", force: true do |t|
    t.string "name"
    t.string "username"
    t.text   "bio"
    t.string "password"
    t.float  "cashavailable"
    t.float  "cashinvested"
  end

end
