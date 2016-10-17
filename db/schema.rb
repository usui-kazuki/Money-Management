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

ActiveRecord::Schema.define(version: 20161017031007) do

  create_table "categories", force: :cascade do |t|
    t.string   "categoryname"
    t.string   "loginuser_id"
    t.string   "type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "familyusers", force: :cascade do |t|
    t.string   "name"
    t.string   "loginuser_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "goals", force: :cascade do |t|
    t.date     "date"
    t.integer  "goalmoney"
    t.string   "loginuser_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "loginusers", force: :cascade do |t|
    t.string   "password"
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notices", force: :cascade do |t|
    t.date     "date"
    t.string   "title"
    t.string   "memo"
    t.string   "loginuser_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "prices", force: :cascade do |t|
    t.date     "date"
    t.integer  "price"
    t.string   "memo"
    t.string   "familyuser_id"
    t.string   "payment"
    t.string   "loginuser_id"
    t.string   "type"
    t.string   "category_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
