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

ActiveRecord::Schema.define(version: 2018_12_12_053706) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "channel_to_groups", force: :cascade do |t|
    t.integer "channel_id"
    t.integer "group_id"
    t.boolean "blogging", default: false
    t.boolean "writing", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["channel_id"], name: "index_channel_to_groups_on_channel_id"
    t.index ["group_id"], name: "index_channel_to_groups_on_group_id"
  end

  create_table "channels", force: :cascade do |t|
    t.integer "usage", default: 0
    t.string "url"
    t.string "title"
    t.string "login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "channel_number", default: 10, null: false
  end

  create_table "copyrigths", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dataprotections", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faqs", force: :cascade do |t|
    t.text "question"
    t.text "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_comments", force: :cascade do |t|
    t.integer "group_message_id"
    t.integer "user_id"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_message_id"], name: "index_group_comments_on_group_message_id"
    t.index ["user_id"], name: "index_group_comments_on_user_id"
  end

  create_table "group_messages", force: :cascade do |t|
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.integer "creator_id"
    t.index ["group_id"], name: "index_group_messages_on_group_id"
  end

  create_table "group_user_messages", force: :cascade do |t|
    t.integer "group_id"
    t.integer "user_id"
    t.integer "last_message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_group_user_messages_on_group_id"
    t.index ["user_id"], name: "index_group_user_messages_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "impressums", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_to_channels", force: :cascade do |t|
    t.integer "user_id"
    t.integer "channel_id"
    t.boolean "blogging"
    t.boolean "writting"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["channel_id"], name: "index_user_to_channels_on_channel_id"
    t.index ["user_id"], name: "index_user_to_channels_on_user_id"
  end

  create_table "user_to_companies", force: :cascade do |t|
    t.boolean "admin", default: false
    t.integer "user_id_id"
    t.integer "company_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id_id"], name: "index_user_to_companies_on_company_id_id"
    t.index ["user_id_id"], name: "index_user_to_companies_on_user_id_id"
  end

  create_table "user_to_groups", force: :cascade do |t|
    t.integer "user_id"
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_user_to_groups_on_group_id"
    t.index ["user_id"], name: "index_user_to_groups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "company_id"
    t.string "name"
    t.integer "status"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
    t.boolean "superuser", default: false, null: false
    t.integer "creator_id"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
