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

ActiveRecord::Schema.define(version: 20170711044251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_hours", force: :cascade do |t|
    t.string   "day"
    t.time     "opening_time"
    t.time     "closing_time"
    t.string   "ampm"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_business_hours_on_user_id", using: :btree
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer  "cart_id"
    t.integer  "menu_item_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.decimal  "subtotal",     precision: 8, scale: 2
    t.decimal  "total",        precision: 8, scale: 2
    t.index ["cart_id"], name: "index_cart_items_on_cart_id", using: :btree
    t.index ["menu_item_id"], name: "index_cart_items_on_menu_item_id", using: :btree
  end

  create_table "carts", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carts_on_user_id", using: :btree
  end

  create_table "food_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "foods", force: :cascade do |t|
    t.string   "serving_size"
    t.string   "calorie"
    t.string   "total_fat"
    t.string   "saturated_fat"
    t.string   "trans_fat"
    t.string   "sodium"
    t.string   "sugar"
    t.string   "protein"
    t.string   "food_name"
    t.integer  "food_type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.index ["food_type_id"], name: "index_foods_on_food_type_id", using: :btree
    t.index ["user_id"], name: "index_foods_on_user_id", using: :btree
  end

  create_table "images", force: :cascade do |t|
    t.text     "caption"
    t.integer  "menu_item_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["menu_item_id"], name: "index_images_on_menu_item_id", using: :btree
  end

  create_table "menu_items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price",       precision: 8, scale: 2, default: "0.0"
    t.integer  "user_id"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.string   "image"
    t.index ["user_id"], name: "index_menu_items_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
