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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20130706083315) do
=======
ActiveRecord::Schema.define(version: 20130705215241) do
>>>>>>> f3833128fed48bd028622a88c300a1434bb4203a

  create_table "associations", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "associations", ["email"], name: "index_associations_on_email", unique: true
  add_index "associations", ["reset_password_token"], name: "index_associations_on_reset_password_token", unique: true

  create_table "events", force: true do |t|
    t.string   "name"
    t.date     "start_data"
    t.date     "end_date"
    t.text     "description"
    t.string   "local"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feeds", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
  create_table "notices", force: true do |t|
=======
  create_table "news", force: true do |t|
>>>>>>> f3833128fed48bd028622a88c300a1434bb4203a
    t.string   "title"
    t.date     "date_time"
    t.text     "content"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "genre"
    t.string   "address"
    t.boolean  "is_association"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
