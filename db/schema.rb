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

ActiveRecord::Schema.define(version: 20170913144421) do

  create_table "notes", force: :cascade do |t|
    t.integer "value"
    t.integer "user_id"
    t.integer "video_id"
    t.index ["user_id"], name: "index_notes_on_user_id"
    t.index ["video_id"], name: "index_notes_on_video_id"
  end

  create_table "pinneds", force: :cascade do |t|
    t.integer "user_id"
    t.integer "video_id"
    t.index ["user_id"], name: "index_pinneds_on_user_id"
    t.index ["video_id"], name: "index_pinneds_on_video_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "password"
  end

  create_table "videos", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.integer "view"
    t.integer "note"
  end

end