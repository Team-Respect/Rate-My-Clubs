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

ActiveRecord::Schema.define(version: 2021_10_16_053623) do

  create_table "assignments_a4_thanh_quan_tests", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.decimal "overall_rating", precision: 2, scale: 1, default: "-1.0", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "category_id", null: false
    t.decimal "career_oriented_rating", precision: 2, scale: 1, default: "-1.0", null: false
    t.decimal "enjoyment_rating", precision: 2, scale: 1, default: "-1.0", null: false
    t.decimal "community_rating", precision: 2, scale: 1, default: "-1.0", null: false
    t.index ["category_id"], name: "index_clubs_on_category_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.decimal "general_rating", precision: 2, scale: 1
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "club_id", null: false
    t.integer "user_id", null: false
    t.decimal "career_oriented_rating", precision: 2, scale: 1
    t.decimal "enjoyment_rating", precision: 2, scale: 1
    t.decimal "community_rating", precision: 2, scale: 1
    t.index ["club_id"], name: "index_ratings_on_club_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clubs", "categories"
  add_foreign_key "ratings", "clubs"
  add_foreign_key "ratings", "users"
end
