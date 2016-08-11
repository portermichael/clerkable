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

ActiveRecord::Schema.define(version: 20160808041518) do

  create_table "departments", force: :cascade do |t|
    t.string   "department_name"
    t.string   "ancestry"
    t.string   "youtube_id"
    t.string   "youtube_thumbnail_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "product_name"
    t.integer  "department_id"
    t.string   "youtube_id"
    t.string   "youtube_thumbnail_id"
    t.decimal  "msrp"
    t.decimal  "expected"
    t.decimal  "amazon_price"
    t.string   "amazon_link"
    t.decimal  "walmart_price"
    t.string   "walmart_link"
    t.string   "benefits"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
