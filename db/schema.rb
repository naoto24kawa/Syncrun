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

ActiveRecord::Schema.define(version: 20151126195955) do

  create_table "authorities", force: :cascade do |t|
    t.string   "name",              limit: 255, null: false
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",              limit: 255, null: false
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "content",           limit: 255, null: false
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "user_id",           limit: 4,   null: false
  end

  create_table "content_comments", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "content_id",        limit: 4, null: false
    t.integer  "comment_id",        limit: 4, null: false
  end

  create_table "content_goods", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "content_id",        limit: 4, null: false
    t.integer  "good_id",           limit: 4, null: false
  end

  create_table "contents", force: :cascade do |t|
    t.string   "content",           limit: 255, null: false
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "idea_id",           limit: 4,   null: false
  end

  create_table "goods", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "user_id",           limit: 4, null: false
  end

  create_table "idea_goods", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "title_id",          limit: 4, null: false
    t.integer  "idea_id",           limit: 4, null: false
  end

  create_table "ideas", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "category_id",       limit: 4, null: false
    t.integer  "user_id",           limit: 4, null: false
  end

  create_table "personal_informations", force: :cascade do |t|
    t.string   "name",              limit: 255, null: false
    t.string   "gender",            limit: 255, null: false
    t.date     "birth_date",                    null: false
    t.string   "mail_address",      limit: 255, null: false
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "task_comments", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "task_id",           limit: 4, null: false
    t.integer  "comment_id",        limit: 4, null: false
  end

  create_table "task_goods", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "task_id",           limit: 4, null: false
    t.integer  "good_id",           limit: 4, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "content",           limit: 255, null: false
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "idea_id",           limit: 4,   null: false
  end

  create_table "title_comments", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "title_id",          limit: 4, null: false
    t.integer  "comment_id",        limit: 4, null: false
  end

  create_table "title_goods", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "title_id",          limit: 4, null: false
    t.integer  "good_id",           limit: 4, null: false
  end

  create_table "titles", force: :cascade do |t|
    t.string   "content",           limit: 255, null: false
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "idea_id",           limit: 4,   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                    limit: 255, null: false
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "authority_id",            limit: 4,   null: false
    t.integer  "personal_information_id", limit: 4,   null: false
  end

end
