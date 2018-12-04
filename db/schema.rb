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

ActiveRecord::Schema.define(version: 2018_11_30_163205) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.bigint "commenter_id"
    t.bigint "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commenter_id"], name: "index_comments_on_commenter_id"
    t.index ["image_id"], name: "index_comments_on_image_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "caption"
    t.string "img"
    t.bigint "poster_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["poster_id"], name: "index_images_on_poster_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "like_count"
    t.bigint "liker_id"
    t.bigint "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["image_id"], name: "index_likes_on_image_id"
    t.index ["liker_id"], name: "index_likes_on_liker_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "fullname"
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
