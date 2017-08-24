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

ActiveRecord::Schema.define(version: 20170823213727) do

  create_table "exp_points", force: :cascade do |t|
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "possible_answer_id"
    t.index ["possible_answer_id"], name: "index_exp_points_on_possible_answer_id"
    t.index ["user_id"], name: "index_exp_points_on_user_id"
  end

  create_table "game_levels", force: :cascade do |t|
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "game_id"
    t.index ["game_id"], name: "index_game_levels_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.string "instructions"
    t.string "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "possible_answers", force: :cascade do |t|
    t.string "answer"
    t.boolean "correct_ans"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "question_id"
    t.integer "exp_point_id"
    t.index ["exp_point_id"], name: "index_possible_answers_on_exp_point_id"
    t.index ["question_id"], name: "index_possible_answers_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "game_level_id"
    t.index ["game_level_id"], name: "index_questions_on_game_level_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "grade"
    t.string "school_name"
    t.string "email"
    t.string "avatar"
    t.string "username"
    t.integer "exp_points"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
