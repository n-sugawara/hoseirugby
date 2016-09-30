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

ActiveRecord::Schema.define(version: 20160929181954) do

  create_table "backupplayers", force: :cascade do |t|
    t.integer  "result_id"
    t.integer  "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chengeplayers", force: :cascade do |t|
    t.integer  "result_id"
    t.string   "time1"
    t.integer  "time2"
    t.string   "back_player"
    t.string   "in_player"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "goalplayers", force: :cascade do |t|
    t.integer  "result_id"
    t.string   "time1"
    t.integer  "time2"
    t.integer  "player_id"
    t.string   "goalkind"
    t.integer  "point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "image"
    t.integer  "player_id"
    t.integer  "result_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.string   "yomi"
    t.string   "position"
    t.integer  "height"
    t.integer  "weight"
    t.string   "gakubu"
    t.integer  "gakunen"
    t.text     "highscool"
    t.text     "career"
    t.string   "image"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.datetime "time"
    t.string   "category"
    t.string   "team"
    t.string   "opponent"
    t.integer  "score_first_t"
    t.integer  "score_first_g"
    t.integer  "score_first_pg"
    t.integer  "score_first_dg"
    t.integer  "score_second_t"
    t.integer  "score_second_g"
    t.integer  "score_second_pg"
    t.integer  "score_second_dg"
    t.integer  "opponent_score_first_t"
    t.integer  "opponent_score_first_g"
    t.integer  "opponent_score_first_pg"
    t.integer  "opponent_score_first_dg"
    t.integer  "opponent_score_second_t"
    t.integer  "opponent_score_second_g"
    t.integer  "opponent_score_second_pg"
    t.integer  "opponent_score_second_dg"
    t.integer  "ho"
    t.integer  "rpr"
    t.integer  "lpr"
    t.integer  "rlo"
    t.integer  "llo"
    t.integer  "rfl"
    t.integer  "lfl"
    t.integer  "n08"
    t.integer  "sh"
    t.integer  "so"
    t.integer  "rctb"
    t.integer  "lctb"
    t.integer  "rwtb"
    t.integer  "lwtb"
    t.integer  "fb"
    t.integer  "backupplayer"
    t.string   "place"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string   "category"
    t.date     "data"
    t.text     "title"
    t.string   "image"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
