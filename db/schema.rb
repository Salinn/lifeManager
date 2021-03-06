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

ActiveRecord::Schema.define(version: 20160818025608) do

  create_table "accounts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "all_apartments", force: :cascade do |t|
    t.integer  "apartment_id"
    t.integer  "account_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["account_id"], name: "index_all_apartments_on_account_id"
    t.index ["apartment_id"], name: "index_all_apartments_on_apartment_id"
  end

  create_table "apartments", force: :cascade do |t|
    t.string   "name"
    t.integer  "landlord_id"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "rent_price"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["landlord_id"], name: "index_apartments_on_landlord_id"
  end

  create_table "bills", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.date     "due_date"
    t.integer  "apartment_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["apartment_id"], name: "index_bills_on_apartment_id"
    t.index ["user_id"], name: "index_bills_on_user_id"
  end

  create_table "bought_items", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.integer  "apartment_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["apartment_id"], name: "index_bought_items_on_apartment_id"
    t.index ["user_id"], name: "index_bought_items_on_user_id"
  end

  create_table "landlords", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "needed_items", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.integer  "user_id"
    t.integer  "apartment_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["apartment_id"], name: "index_needed_items_on_apartment_id"
    t.index ["user_id"], name: "index_needed_items_on_user_id"
  end

  create_table "shared_items", force: :cascade do |t|
    t.string   "name"
    t.string   "photo"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shared_items_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "account_id"
    t.string   "provider"
    t.string   "uid"
    t.index ["account_id"], name: "index_users_on_account_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
