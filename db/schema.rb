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

ActiveRecord::Schema.define(version: 20170128205139) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "status"
    t.string   "address_name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id"

  create_table "answers", force: :cascade do |t|
    t.string   "answer_content"
    t.integer  "critic_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "answers", ["critic_id"], name: "index_answers_on_critic_id"

  create_table "carted_products", force: :cascade do |t|
    t.integer  "cart_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "carted_products", ["cart_id"], name: "index_carted_products_on_cart_id"
  add_index "carted_products", ["product_id"], name: "index_carted_products_on_product_id"

  create_table "carts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "count"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "carts", ["user_id"], name: "index_carts_on_user_id"

  create_table "critics", force: :cascade do |t|
    t.integer  "department_id"
    t.integer  "user_id"
    t.string   "youtube_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "critics", ["department_id"], name: "index_critics_on_department_id"
  add_index "critics", ["user_id"], name: "index_critics_on_user_id"

  create_table "departments", force: :cascade do |t|
    t.string   "department_name"
    t.string   "ancestry"
    t.string   "youtube_id"
    t.string   "youtube_thumbnail_id"
    t.integer  "user_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "departments", ["ancestry"], name: "index_departments_on_ancestry"
  add_index "departments", ["id", "ancestry"], name: "index_departments_on_id_and_ancestry"
  add_index "departments", ["id"], name: "index_departments_on_id"
  add_index "departments", ["user_id"], name: "index_departments_on_user_id"

  create_table "feature_names", force: :cascade do |t|
    t.integer  "critic_id"
    t.string   "feature_name"
    t.integer  "feature_name_type"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "feature_names", ["critic_id"], name: "index_feature_names_on_critic_id"
  add_index "feature_names", ["user_id"], name: "index_feature_names_on_user_id"

  create_table "features", force: :cascade do |t|
    t.integer  "review_id"
    t.string   "feature_content"
    t.integer  "feature_type"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "features", ["review_id"], name: "index_features_on_review_id"
  add_index "features", ["user_id"], name: "index_features_on_user_id"

  create_table "ordered_products", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ordered_products", ["order_id"], name: "index_ordered_products_on_order_id"
  add_index "ordered_products", ["product_id"], name: "index_ordered_products_on_product_id"

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "status"
    t.datetime "order_date"
    t.datetime "prepare_date"
    t.datetime "ship_date"
    t.datetime "receive_date"
    t.string   "address_name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.integer  "pretotal"
    t.integer  "tax"
    t.integer  "total"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "products", force: :cascade do |t|
    t.string   "product_name"
    t.integer  "department_id"
    t.integer  "user_id"
    t.string   "youtube_id"
    t.string   "youtube_thumbnail_id"
    t.decimal  "msrp"
    t.decimal  "expected"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "products", ["department_id"], name: "index_products_on_department_id"
  add_index "products", ["id", "department_id"], name: "index_products_on_id_and_department_id"
  add_index "products", ["id"], name: "index_products_on_id"
  add_index "products", ["user_id"], name: "index_products_on_user_id"

  create_table "questions", force: :cascade do |t|
    t.string   "question_content"
    t.integer  "critic_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "questions", ["critic_id"], name: "index_questions_on_critic_id"

  create_table "relationships", force: :cascade do |t|
    t.integer  "department_id"
    t.integer  "follower_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "relationships", ["department_id", "follower_id"], name: "index_relationships_on_department_id_and_follower_id", unique: true
  add_index "relationships", ["department_id"], name: "index_relationships_on_department_id"
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id"
  add_index "relationships", ["user_id"], name: "index_relationships_on_user_id"

  create_table "reviews", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "critic_id"
    t.integer  "user_id"
    t.string   "youtube_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["critic_id"], name: "index_reviews_on_critic_id"
  add_index "reviews", ["product_id"], name: "index_reviews_on_product_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

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
