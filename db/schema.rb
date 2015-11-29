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

ActiveRecord::Schema.define(version: 20151129085310) do

  create_table "authorities", force: :cascade do |t|
    t.string   "name",              limit: 255, null: false
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "authorities", ["id"], name: "index_authorities_on_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",              limit: 255, null: false
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "categories", ["id"], name: "index_categories_on_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "content",           limit: 255, null: false
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "user_id",           limit: 4
  end

  add_index "comments", ["id"], name: "index_comments_on_id", using: :btree

  create_table "content_comments", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "content_id",        limit: 4
    t.integer  "comment_id",        limit: 4
  end

  add_index "content_comments", ["id"], name: "index_content_comments_on_id", using: :btree

  create_table "content_goods", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "content_id",        limit: 4
    t.integer  "good_id",           limit: 4
  end

  add_index "content_goods", ["id"], name: "index_content_goods_on_id", using: :btree

  create_table "contents", force: :cascade do |t|
    t.string   "content",           limit: 255, null: false
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "idea_id",           limit: 4
  end

  add_index "contents", ["id"], name: "index_contents_on_id", using: :btree

  create_table "goods", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "user_id",           limit: 4
  end

  add_index "goods", ["id"], name: "index_goods_on_id", using: :btree

  create_table "idea_goods", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "title_id",          limit: 4
    t.integer  "idea_id",           limit: 4
  end

  add_index "idea_goods", ["id"], name: "index_idea_goods_on_id", using: :btree

  create_table "ideas", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "category_id",       limit: 4
    t.integer  "user_id",           limit: 4
  end

  add_index "ideas", ["id"], name: "index_ideas_on_id", using: :btree

  create_table "personal_informations", force: :cascade do |t|
    t.string   "name",              limit: 255, null: false
    t.string   "gender",            limit: 255, null: false
    t.date     "birth_date",                    null: false
    t.string   "mail_address",      limit: 255, null: false
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "personal_informations", ["id"], name: "index_personal_informations_on_id", using: :btree

  create_table "task_comments", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "task_id",           limit: 4
    t.integer  "comment_id",        limit: 4
  end

  add_index "task_comments", ["id"], name: "index_task_comments_on_id", using: :btree

  create_table "task_goods", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "task_id",           limit: 4
    t.integer  "good_id",           limit: 4
  end

  add_index "task_goods", ["id"], name: "index_task_goods_on_id", using: :btree

  create_table "tasks", force: :cascade do |t|
    t.string   "content",           limit: 255, null: false
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "idea_id",           limit: 4
  end

  add_index "tasks", ["id"], name: "index_tasks_on_id", using: :btree

  create_table "title_comments", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "title_id",          limit: 4
    t.integer  "comment_id",        limit: 4
  end

  add_index "title_comments", ["id"], name: "index_title_comments_on_id", using: :btree

  create_table "title_goods", force: :cascade do |t|
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "title_id",          limit: 4
    t.integer  "good_id",           limit: 4
  end

  add_index "title_goods", ["id"], name: "index_title_goods_on_id", using: :btree

  create_table "titles", force: :cascade do |t|
    t.string   "content",           limit: 255, null: false
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "idea_id",           limit: 4
  end

  add_index "titles", ["id"], name: "index_titles_on_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                    limit: 255, null: false
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "authority_id",            limit: 4
    t.integer  "personal_information_id", limit: 4
  end

  add_index "users", ["id"], name: "index_users_on_id", using: :btree

end
