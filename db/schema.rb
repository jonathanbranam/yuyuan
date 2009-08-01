# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090801233005) do

  create_table "chinese_words", :force => true do |t|
    t.string   "traditional"
    t.string   "simplified"
    t.string   "pinyin"
    t.string   "english1"
    t.string   "english2"
    t.string   "english3"
    t.string   "english4"
    t.string   "english5"
    t.string   "english6"
    t.string   "english7"
    t.string   "english8"
    t.string   "english9"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "translations", :force => true do |t|
    t.integer  "word_a_id"
    t.integer  "word_b_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "words", :force => true do |t|
    t.string   "language"
    t.string   "main_script"
    t.string   "secondary_script"
    t.string   "romanization"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
