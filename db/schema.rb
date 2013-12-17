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

ActiveRecord::Schema.define(:version => 201304011546033) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "parent_id"
  end

  create_table "orders", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "pay_type"
    t.string   "address"
    t.string   "address_latitude"
    t.string   "address_longitude"
    t.string   "address_locality"
    t.string   "address_country"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.boolean  "order_confirmation", :default => false
    t.string   "order_token"
  end

  create_table "orders_products", :id => false, :force => true do |t|
    t.integer "product_id"
    t.integer "order_id"
  end

  create_table "pictures", :force => true do |t|
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "image_file_name"
    t.integer  "image_file_size"
    t.string   "image_file_type"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.string   "pictures_attributes"
    t.string   "image_content_type"
    t.string   "image"
  end

  create_table "products", :force => true do |t|
    t.integer  "category_id"
    t.decimal  "price",        :precision => 10, :scale => 0
    t.string   "description"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.string   "product_name"
    t.integer  "quantity"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "blocked"
    t.boolean  "admin",                  :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
