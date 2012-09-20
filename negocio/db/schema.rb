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

ActiveRecord::Schema.define(:version => 20120919211300) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plans", :force => true do |t|
    t.string   "title"
    t.text     "vision"
    t.text     "reasoning"
    t.integer  "time_month"
    t.integer  "total_investment"
    t.integer  "net_margin"
    t.integer  "roi"
    t.string   "path_file_plan"
    t.integer  "price_file"
    t.string   "viable"
    t.integer  "sabio_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plans", ["category_id"], :name => "index_plans_on_category_id"
  add_index "plans", ["sabio_id"], :name => "index_plans_on_sabio_id"

  create_table "sabios", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
