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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140322222323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "fem_level"
  end

  add_index "artists", ["name"], name: "index_artists_on_name", using: :btree

  create_table "fetch_jobs", force: true do |t|
    t.date     "date",                              null: false
    t.string   "status",       default: "enqueued", null: false
    t.string   "last_message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fetch_jobs", ["date"], name: "index_fetch_jobs_on_date", using: :btree
  add_index "fetch_jobs", ["status"], name: "index_fetch_jobs_on_status", using: :btree

  create_table "songs", force: true do |t|
    t.string   "songuuid"
    t.string   "streamuuid"
    t.string   "songartist"
    t.string   "songtitle"
    t.string   "songartwork"
    t.string   "songituneslink"
    t.string   "songitunespreview"
    t.string   "cutid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "artist_id"
    t.date     "date"
  end

  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id", using: :btree
  add_index "songs", ["date"], name: "index_songs_on_date", using: :btree

end
