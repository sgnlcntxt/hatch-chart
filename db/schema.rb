# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_24_203238) do

  create_table "bugs", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fisheries", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.string "location"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flies", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hatches", force: :cascade do |t|
    t.integer "bug_id"
    t.integer "fishery_id"
    t.string "minimum_size"
    t.string "maximum_size"
    t.string "start_month"
    t.integer "start_day"
    t.string "end_month"
    t.integer "end_day"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bug_id"], name: "index_hatches_on_bug_id"
    t.index ["fishery_id"], name: "index_hatches_on_fishery_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "fly_id"
    t.integer "bug_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bug_id"], name: "index_matches_on_bug_id"
    t.index ["fly_id"], name: "index_matches_on_fly_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "hatches", "bugs"
  add_foreign_key "hatches", "fisheries"
  add_foreign_key "matches", "bugs"
  add_foreign_key "matches", "flies"
end
