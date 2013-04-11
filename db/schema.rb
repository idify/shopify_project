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

ActiveRecord::Schema.define(:version => 20130410111928) do

  create_table "admin_filters", :force => true do |t|
    t.string   "name"
    t.string   "condition"
    t.string   "operator"
    t.string   "value"
    t.string   "action_type"
    t.string   "slug"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "admin_filters", ["slug"], :name => "index_admin_filters_on_slug", :unique => true

  create_table "sales", :force => true do |t|
    t.string   "product_id"
    t.datetime "order_date"
    t.float    "total_amount"
    t.string   "gateway"
    t.string   "transaction_id"
    t.string   "name"
    t.string   "email"
    t.string   "order_status",   :default => "pending"
    t.string   "address"
    t.string   "state"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

end
