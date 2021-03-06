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

ActiveRecord::Schema.define(version: 20151018151144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "conversations", ["recipient_id"], name: "index_conversations_on_recipient_id", using: :btree
  add_index "conversations", ["sender_id"], name: "index_conversations_on_sender_id", using: :btree

  create_table "endorsements", force: :cascade do |t|
    t.integer "user_id",       null: false
    t.integer "user_skill_id", null: false
  end

  add_index "endorsements", ["user_id", "user_skill_id"], name: "index_endorsements_on_user_id_and_user_skill_id", unique: true, using: :btree

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.integer  "conversation_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "question_skills", force: :cascade do |t|
    t.integer "question_id", null: false
    t.integer "skill_id",    null: false
  end

  add_index "question_skills", ["question_id", "skill_id"], name: "index_question_skills_on_question_id_and_skill_id", unique: true, using: :btree

  create_table "questions", force: :cascade do |t|
    t.integer  "user_id",     null: false
    t.string   "body",        null: false
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string  "name",        null: false
    t.integer "category_id", null: false
  end

  create_table "user_skills", force: :cascade do |t|
    t.integer "user_id",                       null: false
    t.integer "skill_id",                      null: false
    t.integer "endorsement_count", default: 0
  end

  add_index "user_skills", ["user_id", "skill_id"], name: "index_user_skills_on_user_id_and_skill_id", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name",                                                        null: false
    t.string   "last_name",                                                         null: false
    t.string   "email",                  default: "",                               null: false
    t.string   "encrypted_password",     default: "",                               null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                                null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "photo",                  default: "http://i.imgur.com/aLpJ7K4.png"
    t.string   "industry"
    t.string   "description"
    t.string   "location"
    t.string   "linkedin_profile"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
end
