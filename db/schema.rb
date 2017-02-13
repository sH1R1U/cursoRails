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

ActiveRecord::Schema.define(version: 20170203223520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "author"
    t.string   "gender"
    t.string   "title"
    t.integer  "year"
    t.integer  "punctuation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "commentaries", force: :cascade do |t|
    t.string   "commentary"
    t.date     "date"
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_commentaries_on_book_id", using: :btree
    t.index ["user_id"], name: "index_commentaries_on_user_id", using: :btree
  end

  create_table "for_readings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_for_readings_on_book_id", using: :btree
    t.index ["user_id"], name: "index_for_readings_on_user_id", using: :btree
  end

  create_table "fovorite_books", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_fovorite_books_on_book_id", using: :btree
    t.index ["user_id"], name: "index_fovorite_books_on_user_id", using: :btree
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "follower"
    t.integer  "following"
    t.integer  "commentary_id"
    t.integer  "for_reading_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["commentary_id"], name: "index_notifications_on_commentary_id", using: :btree
    t.index ["for_reading_id"], name: "index_notifications_on_for_reading_id", using: :btree
  end

  create_table "punctuations", force: :cascade do |t|
    t.integer  "punctuation"
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["book_id"], name: "index_punctuations_on_book_id", using: :btree
    t.index ["user_id"], name: "index_punctuations_on_user_id", using: :btree
  end

  create_table "read_notifications", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_read_notifications_on_book_id", using: :btree
    t.index ["user_id"], name: "index_read_notifications_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "commentaries", "books"
  add_foreign_key "commentaries", "users"
  add_foreign_key "for_readings", "books"
  add_foreign_key "for_readings", "users"
  add_foreign_key "fovorite_books", "books"
  add_foreign_key "fovorite_books", "users"
  add_foreign_key "notifications", "commentaries"
  add_foreign_key "notifications", "for_readings"
  add_foreign_key "notifications", "fovorite_books", column: "id", name: "fovorite_book_id"
  add_foreign_key "punctuations", "books"
  add_foreign_key "punctuations", "users"
  add_foreign_key "read_notifications", "books"
  add_foreign_key "read_notifications", "users"
end
