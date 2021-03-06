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

ActiveRecord::Schema.define(version: 20161019143355) do

  create_table "activities", force: :cascade do |t|
    t.integer  "strava_id"
    t.string   "name"
    t.float    "distance"
    t.integer  "elapsed_time"
    t.string   "activity_type"
    t.date     "start_date"
    t.float    "average_speed"
    t.float    "average_heartrate"
    t.float    "max_heartrate"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_activities_on_user_id"
  end

  create_table "auth_tokens", force: :cascade do |t|
    t.string   "email"
    t.string   "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "beers", force: :cascade do |t|
    t.integer  "untappd_id"
    t.string   "name"
    t.string   "label_url"
    t.string   "country"
    t.string   "brewery"
    t.string   "style"
    t.float    "abv"
    t.float    "ibu"
    t.float    "user_rate"
    t.date     "drink_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["untappd_id"], name: "index_beers_on_untappd_id"
    t.index ["user_id"], name: "index_beers_on_user_id"
  end

  create_table "books", force: :cascade do |t|
    t.integer  "goodreads_id"
    t.string   "title"
    t.string   "image_url"
    t.integer  "num_pages"
    t.integer  "publication_year"
    t.float    "average_rating"
    t.string   "author"
    t.float    "user_rate"
    t.date     "started_at"
    t.date     "read_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_books_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "challanges", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.date     "completed_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "category_id"
    t.integer  "user_id"
    t.index ["category_id"], name: "index_challanges_on_category_id"
    t.index ["user_id"], name: "index_challanges_on_user_id"
  end

  create_table "media", force: :cascade do |t|
    t.string   "file_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "milestones", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.date     "completed_at"
    t.integer  "challange_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["challange_id"], name: "index_milestones_on_challange_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string   "imdb_id"
    t.string   "title"
    t.string   "director"
    t.float    "user_rate"
    t.float    "imdb_rate"
    t.integer  "runtime"
    t.integer  "year"
    t.string   "genres"
    t.string   "url"
    t.date     "seen_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["imdb_id"], name: "index_movies_on_imdb_id"
    t.index ["user_id"], name: "index_movies_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
    t.string   "untappd_username"
    t.string   "goodreads_id"
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

end
