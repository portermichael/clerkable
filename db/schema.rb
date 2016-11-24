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

ActiveRecord::Schema.define(version: 20161122061916) do

  create_table "departments", force: :cascade do |t|
    t.string   "department_name"
    t.string   "ancestry"
    t.string   "youtube_id"
    t.string   "youtube_thumbnail_id"
    t.integer  "user_id"
    t.string   "first_glance_name"
    t.string   "second_glance_name"
    t.string   "third_glance_name"
    t.string   "fourth_glance_name"
    t.string   "fifth_glance_name"
    t.string   "first_feature_name"
    t.string   "second_feature_name"
    t.string   "third_feature_name"
    t.string   "fourth_feature_name"
    t.string   "fifth_feature_name"
    t.string   "first_spec_name"
    t.string   "second_spec_name"
    t.string   "third_spec_name"
    t.string   "fourth_spec_name"
    t.string   "fifth_spec_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "departments", ["ancestry"], name: "index_departments_on_ancestry"
  add_index "departments", ["user_id"], name: "index_departments_on_user_id"

  create_table "products", force: :cascade do |t|
    t.string   "product_name"
    t.integer  "department_id"
    t.string   "youtube_id"
    t.string   "youtube_thumbnail_id"
    t.decimal  "msrp"
    t.decimal  "expected"
    t.string   "first_seller"
    t.decimal  "first_price"
    t.string   "first_link"
    t.string   "second_seller"
    t.decimal  "second_price"
    t.string   "second_link"
    t.string   "third_seller"
    t.decimal  "third_price"
    t.string   "third_link"
    t.integer  "user_id"
    t.string   "fourth_seller"
    t.decimal  "fourth_price"
    t.string   "fourth_link"
    t.string   "fifth_seller"
    t.decimal  "fifth_price"
    t.string   "fifth_link"
    t.string   "first_glance"
    t.string   "second_glance"
    t.string   "third_glance"
    t.string   "fourth_glance"
    t.string   "fifth_glance"
    t.string   "first_feature"
    t.string   "second_feature"
    t.string   "third_feature"
    t.string   "fourth_feature"
    t.string   "fifth_feature"
    t.string   "first_spec"
    t.string   "second_spec"
    t.string   "third_spec"
    t.string   "fourth_spec"
    t.string   "fifth_spec"
    t.string   "benefits"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "products", ["department_id"], name: "index_products_on_department_id"

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id"
  add_index "relationships", ["user_id"], name: "index_relationships_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
