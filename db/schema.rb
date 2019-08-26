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

ActiveRecord::Schema.define(version: 2019_08_26_153851) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chats", force: :cascade do |t|
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "message"
    t.string "username"
    t.index ["game_id"], name: "index_chats_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "score"
    t.index ["story_id"], name: "index_games_on_story_id"
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.boolean "seducer"
    t.bigint "chat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_id"], name: "index_messages_on_chat_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "seducee_introduction"
    t.text "seducee_phrase"
    t.text "seducer_introduction"
    t.text "seducer_answer_A"
    t.text "seducer_answer_B"
    t.bigint "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number"
    t.string "correct_answer"
    t.index ["story_id"], name: "index_questions_on_story_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "photo"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_stories_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "chats", "games"
  add_foreign_key "games", "stories"
  add_foreign_key "games", "users"
  add_foreign_key "messages", "chats"
  add_foreign_key "questions", "stories"
  add_foreign_key "stories", "users"
end
