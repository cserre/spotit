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

ActiveRecord::Schema.define(version: 20151106123538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.float    "total_price"
    t.date     "start_time"
    t.date     "end_time"
    t.integer  "spot_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "bookings", ["spot_id"], name: "index_bookings_on_spot_id", using: :btree
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.integer  "spot_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "photos", ["spot_id"], name: "index_photos_on_spot_id", using: :btree

  create_table "spot_reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "comment"
    t.integer  "user_id"
    t.integer  "spot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "spot_reviews", ["spot_id"], name: "index_spot_reviews_on_spot_id", using: :btree
  add_index "spot_reviews", ["user_id"], name: "index_spot_reviews_on_user_id", using: :btree

  create_table "spots", force: :cascade do |t|
    t.string   "title"
    t.string   "street"
    t.text     "description"
    t.float    "price"
    t.integer  "user_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.boolean  "visible",           default: false
    t.string   "city"
    t.string   "style"
    t.integer  "post_code"
    t.integer  "area"
    t.string   "exposition"
    t.boolean  "exceptional_view"
    t.boolean  "modular_furniture"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
  end

  add_index "spots", ["user_id"], name: "index_spots_on_user_id", using: :btree

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
    t.string   "provider"
    t.string   "uid"
    t.string   "picture"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "bookings", "spots"
  add_foreign_key "bookings", "users"
  add_foreign_key "photos", "spots"
  add_foreign_key "spot_reviews", "spots"
  add_foreign_key "spot_reviews", "users"
  add_foreign_key "spots", "users"
end
