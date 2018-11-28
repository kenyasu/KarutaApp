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

ActiveRecord::Schema.define(version: 2018_11_24_155845) do

  create_table "age_classes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "avoidances", force: :cascade do |t|
    t.integer "result_id"
    t.integer "karuta_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "criticals", force: :cascade do |t|
    t.integer "result_id"
    t.integer "karuta_id"
    t.integer "field_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_counts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jokers", force: :cascade do |t|
    t.integer "result_id"
    t.integer "karuta_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "karuta", force: :cascade do |t|
    t.string "waka"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opponents", force: :cascade do |t|
    t.string "name"
    t.string "gender_id"
    t.string "integer"
    t.integer "grade_id"
    t.integer "hand_id"
    t.string "belongs"
    t.integer "style_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "otetsukis", force: :cascade do |t|
    t.integer "result_id"
    t.integer "karuta_id"
    t.integer "field_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.date "date"
    t.integer "gameType_id"
    t.integer "gameCount_id"
    t.integer "opponent_id"
    t.integer "cardDifference"
    t.text "comment"
    t.integer "discussionOpp"
    t.integer "discussionSelf"
    t.integer "user_id"
    t.integer "critical_id"
    t.integer "avoidance_id"
    t.integer "otetsuki_id"
    t.integer "joker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedule_practices", force: :cascade do |t|
    t.datetime "start_time"
    t.string "place"
    t.string "note"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedule_tournaments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tournament_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "name"
    t.string "host"
    t.date "date"
    t.string "place"
    t.string "grade"
    t.string "entryFee"
    t.date "applicationPeriod"
    t.string "capacity"
    t.text "access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "secondPlace"
    t.text "others"
    t.string "number"
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

end
