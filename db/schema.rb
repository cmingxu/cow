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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140709150350) do

  create_table "applications", :force => true do |t|
    t.string   "name"
    t.integer  "client_id"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "book_records", :force => true do |t|
    t.integer  "client_id"
    t.integer  "user_id"
    t.integer  "project_id"
    t.string   "department_id"
    t.float    "price"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "bugs", :force => true do |t|
    t.text     "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "contact_person"
    t.string   "contact_tel"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "contracts", :force => true do |t|
    t.string   "name"
    t.date     "sign_date"
    t.integer  "added_by_id"
    t.string   "code"
    t.text     "desc"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.float    "size"
    t.string   "chaoxiang"
    t.integer  "client_id"
    t.integer  "project_id"
    t.integer  "created_by"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "huxings", :force => true do |t|
    t.string   "name"
    t.integer  "client_id"
    t.integer  "created_by"
    t.text     "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "message_users", :force => true do |t|
    t.integer  "message_id"
    t.integer  "user_id"
    t.boolean  "read"
    t.datetime "read_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "messages", :force => true do |t|
    t.text     "content"
    t.text     "title"
    t.integer  "created_by"
    t.string   "attach1"
    t.string   "attach2"
    t.string   "attach3"
    t.string   "attach4"
    t.string   "attach5"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pages", :force => true do |t|
    t.string   "slug"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
    t.string   "title"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "code"
    t.integer  "created_by"
    t.integer  "client_id"
    t.string   "desc"
    t.string   "builder"
    t.string   "wuye"
    t.string   "jianli"
    t.datetime "build_begin_at"
    t.datetime "build_end_at"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "mobile"
    t.string   "login"
    t.string   "roles"
    t.integer  "client_id"
  end

  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "visits", :force => true do |t|
    t.string   "visit_type"
    t.integer  "user_id"
    t.text     "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
