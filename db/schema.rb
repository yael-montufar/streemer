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

ActiveRecord::Schema.define(version: 2020_03_03_215737) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.string "location"
    t.float "longitude"
    t.float "latitude"
    t.bigint "performer_profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["performer_profile_id"], name: "index_events_on_performer_profile_id"
  end

  create_table "performer_profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.string "stage_name"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_performer_profiles_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "performer_profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.index ["performer_profile_id"], name: "index_reviews_on_performer_profile_id"
  end

  create_table "tips", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_tips_on_event_id"
    t.index ["user_id"], name: "index_tips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "events", "performer_profiles"
  add_foreign_key "performer_profiles", "users"
  add_foreign_key "reviews", "performer_profiles"
  add_foreign_key "tips", "events"
  add_foreign_key "tips", "users"
end
