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

ActiveRecord::Schema.define(version: 20131208214517) do

  create_table "artists", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "bio"
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
  end

  add_index "artists", ["email"], name: "index_artists_on_email", unique: true
  add_index "artists", ["reset_password_token"], name: "index_artists_on_reset_password_token", unique: true

  create_table "bids", force: true do |t|
    t.integer "idea_id"
    t.integer "artist_id"
  end

  create_table "buyers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
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
  end

  add_index "buyers", ["email"], name: "index_buyers_on_email", unique: true
  add_index "buyers", ["reset_password_token"], name: "index_buyers_on_reset_password_token", unique: true

  create_table "idea_images", force: true do |t|
    t.string  "url"
    t.integer "idea_id"
  end

  create_table "ideas", force: true do |t|
    t.date    "post_date"
    t.string  "title"
    t.text    "description"
    t.float   "price"
    t.string  "category"
    t.string  "size"
    t.string  "status"
    t.integer "rating"
    t.integer "buyer_id"
    t.integer "artist_id"
  end

  create_table "portfolio_images", force: true do |t|
    t.string  "image"
    t.integer "artist_id"
  end

end
