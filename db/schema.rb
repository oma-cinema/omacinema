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

ActiveRecord::Schema.define(version: 2019_06_20_144252) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "url_article"
    t.string "photo"
    t.string "content"
    t.datetime "date"
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cinemas", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "photo"
    t.integer "number_of_seats"
    t.string "description"
    t.string "url_cinema"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "cinema_id"
    t.string "content"
    t.string "user_name"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinema_id"], name: "index_reviews_on_cinema_id"
  end

end
