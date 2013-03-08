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

ActiveRecord::Schema.define(:version => 20130308180853) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
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
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "boxrequests", :force => true do |t|
    t.integer  "customer_id"
    t.string   "requesttype"
    t.boolean  "followed_up"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "shipping_number"
    t.date     "request_date"
    t.date     "date_sent"
    t.string   "sent_from"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.integer  "height"
    t.integer  "weight"
    t.string   "phonenumber"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  create_table "customizations", :force => true do |t|
    t.integer  "product_id"
    t.string   "customization"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "meas_finals", :force => true do |t|
    t.integer  "customer_id"
    t.decimal  "neck"
    t.decimal  "chest"
    t.decimal  "waist"
    t.decimal  "jacket_length"
    t.decimal  "shoulder_width"
    t.decimal  "sleeve_length"
    t.decimal  "sleeve_width"
    t.decimal  "wrist"
    t.decimal  "hip"
    t.decimal  "pants_length"
    t.decimal  "belt"
    t.decimal  "thigh"
    t.decimal  "knee"
    t.decimal  "crotch"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "meas_initials", :force => true do |t|
    t.integer  "customer_id"
    t.decimal  "neck_i"
    t.decimal  "chest_i"
    t.decimal  "waist_i"
    t.decimal  "jacket_length_i"
    t.decimal  "shoulder_width_i"
    t.decimal  "sleeve_length_i"
    t.decimal  "sleeve_width_i"
    t.decimal  "wrist_i"
    t.decimal  "hip_i"
    t.decimal  "pants_length_i"
    t.decimal  "belt_i"
    t.decimal  "thigh_i"
    t.decimal  "knee_i"
    t.decimal  "crotch_i"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "customer_id"
    t.decimal  "order_value"
    t.decimal  "order_discount"
    t.decimal  "order_gross"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.boolean  "altered"
    t.boolean  "refunded"
    t.decimal  "alt_ref_cost"
    t.integer  "user_id"
    t.boolean  "called"
    t.string   "shipping_number"
    t.string   "order_number"
    t.string   "status"
    t.decimal  "order_cogs"
    t.string   "assigned_factory"
    t.date     "order_date"
    t.date     "expected_ship_date"
    t.date     "shipped_date"
  end

  create_table "others", :force => true do |t|
    t.string   "other_name"
    t.decimal  "price"
    t.string   "description"
    t.integer  "quantity"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "order_id"
  end

  create_table "pants", :force => true do |t|
    t.string   "pant_name"
    t.decimal  "price"
    t.string   "pleats"
    t.string   "cuffs"
    t.integer  "quantity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "order_id"
  end

  create_table "products", :force => true do |t|
    t.integer  "order_id"
    t.string   "product_name"
    t.decimal  "product_price"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "shirts", :force => true do |t|
    t.string   "shirt_name"
    t.decimal  "price"
    t.string   "collar"
    t.string   "cuffs"
    t.string   "placket"
    t.string   "pocket"
    t.string   "fit"
    t.string   "bottom"
    t.string   "contrast_color"
    t.string   "contrast_area"
    t.string   "monongram"
    t.integer  "quantity"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "order_id"
  end

  create_table "suits", :force => true do |t|
    t.string   "suit_name"
    t.decimal  "price"
    t.string   "lapel"
    t.string   "vent"
    t.string   "button"
    t.string   "contrast_color"
    t.string   "contrast_area"
    t.string   "advanced"
    t.string   "pleats"
    t.string   "cuffs"
    t.integer  "quantity"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "order_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
