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

ActiveRecord::Schema[8.0].define(version: 2025_05_10_224626) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "agents", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "symbol"
    t.string "account_id"
    t.integer "credits"
    t.bigint "faction_id", null: false
    t.bigint "headquarters_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["faction_id"], name: "index_agents_on_faction_id"
    t.index ["headquarters_id"], name: "index_agents_on_headquarters_id"
    t.index ["user_id"], name: "index_agents_on_user_id"
  end

  create_table "factions", force: :cascade do |t|
    t.string "symbol"
    t.string "name"
    t.string "desctiption"
    t.bigint "headquarters_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["headquarters_id"], name: "index_factions_on_headquarters_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "ip_address"
    t.string "user_agent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "systems", force: :cascade do |t|
    t.string "symbol"
    t.string "sector_symbol"
    t.string "constellation"
    t.string "name"
    t.string "type"
    t.integer "x"
    t.integer "y"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email_address", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email_address"], name: "index_users_on_email_address", unique: true
  end

  add_foreign_key "agents", "factions"
  add_foreign_key "agents", "systems", column: "headquarters_id"
  add_foreign_key "agents", "users"
  add_foreign_key "factions", "systems", column: "headquarters_id"
  add_foreign_key "sessions", "users"
end
