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

ActiveRecord::Schema.define(:version => 20031016050013) do

  create_table "alarms", :force => true do |t|
    t.string   "descr"
    t.string   "creator"
    t.string   "disabler"
    t.boolean  "enable"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "alarms_answers", :force => true do |t|
    t.integer  "alarm_id"
    t.integer  "answer_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "answers", :force => true do |t|
    t.string   "descr"
    t.boolean  "enable"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "granswer_id"
  end

  create_table "granswers", :force => true do |t|
    t.string   "name"
    t.string   "descr"
    t.boolean  "enable"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
