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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_04_19_081232) do

  create_table "categories", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "learned_words", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "word_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_learned_words_on_user_id"
    t.index ["word_id"], name: "index_learned_words_on_word_id"
  end

  create_table "lesson_words", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "word_id"
    t.bigint "lesson_id"
    t.bigint "word_answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_lesson_words_on_lesson_id"
    t.index ["word_answer_id"], name: "index_lesson_words_on_word_answer_id"
    t.index ["word_id"], name: "index_lesson_words_on_word_id"
  end

  create_table "lessons", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.integer "mark"
    t.bigint "user_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_lessons_on_category_id"
    t.index ["user_id"], name: "index_lessons_on_user_id"
  end

  create_table "users", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "word_answers", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "word_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["word_id"], name: "index_word_answers_on_word_id"
  end

  create_table "words", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "content"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_words_on_category_id"
  end

end
