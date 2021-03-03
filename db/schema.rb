# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_24_214415) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campground_books", force: :cascade do |t|
    t.bigint "campground_id", null: false
    t.bigint "road_trip_id", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["campground_id"], name: "index_campground_books_on_campground_id"
    t.index ["road_trip_id"], name: "index_campground_books_on_road_trip_id"
  end

  create_table "campground_images", force: :cascade do |t|
    t.text "url"
    t.bigint "campground_id", null: false
    t.text "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["campground_id"], name: "index_campground_images_on_campground_id"
  end

  create_table "campgrounds", force: :cascade do |t|
    t.text "url"
    t.text "name"
    t.string "park_code"
    t.string "latitude"
    t.string "longitude"
    t.text "image"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "park_books", force: :cascade do |t|
    t.bigint "park_id", null: false
    t.bigint "road_trip_id", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_park_books_on_park_id"
    t.index ["road_trip_id"], name: "index_park_books_on_road_trip_id"
  end

  create_table "park_images", force: :cascade do |t|
    t.text "url"
    t.bigint "park_id", null: false
    t.text "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_park_images_on_park_id"
  end

  create_table "parks", force: :cascade do |t|
    t.text "url"
    t.text "name"
    t.string "park_code"
    t.text "description"
    t.string "latitude"
    t.string "longitude"
    t.string "designation"
    t.text "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "road_trips", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_road_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "campground_books", "campgrounds"
  add_foreign_key "campground_books", "road_trips"
  add_foreign_key "campground_images", "campgrounds"
  add_foreign_key "park_books", "parks"
  add_foreign_key "park_books", "road_trips"
  add_foreign_key "park_images", "parks"
  add_foreign_key "road_trips", "users"
end
