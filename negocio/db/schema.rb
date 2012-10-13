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

ActiveRecord::Schema.define(:version => 20121013125811) do

  create_table "bancos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emprendedors", :force => true do |t|
    t.string   "nombres"
    t.string   "paterno"
    t.string   "materno"
    t.string   "sexo"
    t.string   "tipo_docum_identidad"
    t.string   "celular"
    t.string   "direccion"
    t.date     "fecha_nacimiento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "numero_documento"
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
    t.string   "nombres"
    t.string   "paterno"
    t.string   "materno"
    t.string   "tipo_docum_identidad"
    t.string   "celular"
    t.string   "direccion"
    t.date     "fecha_nacimiento"
    t.string   "apelativo"
    t.text     "resumen_biografico"
    t.string   "sitio_web"
    t.string   "banco_cta_bancaria"
    t.string   "numero_cta_bancaria"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "numero_documento"
    t.string   "sexo"
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
