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

ActiveRecord::Schema.define(:version => 20090828001850) do

  create_table "chinese_words", :force => true do |t|
    t.string   "traditional"
    t.string   "simplified"
    t.string   "pinyin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "english_definitions", :force => true do |t|
    t.string   "definition"
    t.integer  "chinese_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "translations", :force => true do |t|
    t.integer  "word_a_id"
    t.integer  "word_b_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "word_list_items", :force => true do |t|
    t.integer  "chinese_word_id"
    t.integer  "word_list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "word_lists", :force => true do |t|
    t.string   "name"
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
