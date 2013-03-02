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

ActiveRecord::Schema.define(:version => 20130301221304) do

  create_table "foods", :force => true do |t|
    t.string   "name"
    t.integer  "calories"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "foods_meals", :id => false, :force => true do |t|
    t.integer "food_id"
    t.integer "meal_id"
  end

  create_table "meals", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "eat_date"
    t.time     "eat_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "target"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end