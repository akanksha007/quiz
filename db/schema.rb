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

ActiveRecord::Schema.define(version: 20170319080832) do

  create_table "answers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text    "name",                limit: 65535
    t.integer "questions_id"
    t.integer "survey_responses_id"
    t.index ["questions_id"], name: "index_answers_on_questions_id", using: :btree
    t.index ["survey_responses_id"], name: "index_answers_on_survey_responses_id", using: :btree
  end

  create_table "question_options", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name"
    t.integer "questions_id"
    t.index ["questions_id"], name: "index_question_options_on_questions_id", using: :btree
  end

  create_table "questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text    "question",        limit: 65535
    t.string  "type"
    t.integer "survey_tools_id"
    t.index ["survey_tools_id"], name: "index_questions_on_survey_tools_id", using: :btree
  end

  create_table "survey_responses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.integer "survey_tools_id"
    t.index ["survey_tools_id"], name: "index_survey_responses_on_survey_tools_id", using: :btree
    t.index ["user_id"], name: "index_survey_responses_on_user_id", using: :btree
  end

  create_table "survey_tools", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name"
    t.integer "users_id"
    t.index ["users_id"], name: "index_survey_tools_on_users_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "email"
    t.string "type"
  end

end
