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

ActiveRecord::Schema[8.0].define(version: 2025_05_11_181353) do
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

  create_table "cargo_inventory_items", force: :cascade do |t|
    t.bigint "cargo_id", null: false
    t.string "item_symbol"
    t.string "item_name"
    t.integer "quantity"
    t.integer "unit_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cargo_id"], name: "index_cargo_inventory_items_on_cargo_id"
  end

  create_table "cargos", force: :cascade do |t|
    t.bigint "ship_id", null: false
    t.integer "capacity"
    t.integer "units"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_id"], name: "index_cargos_on_ship_id"
  end

  create_table "cooldowns", force: :cascade do |t|
    t.bigint "ship_id", null: false
    t.integer "total_seconds"
    t.integer "remaining_seconds"
    t.datetime "expiration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_id"], name: "index_cooldowns_on_ship_id"
  end

  create_table "crews", force: :cascade do |t|
    t.bigint "ship_id", null: false
    t.integer "current"
    t.integer "required"
    t.integer "capacity"
    t.string "rotation"
    t.integer "morale"
    t.integer "wages"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_id"], name: "index_crews_on_ship_id"
  end

  create_table "engine_requirements", force: :cascade do |t|
    t.bigint "engine_id", null: false
    t.integer "power"
    t.integer "crew"
    t.integer "slots"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engine_id"], name: "index_engine_requirements_on_engine_id"
  end

  create_table "engines", force: :cascade do |t|
    t.bigint "ship_id", null: false
    t.string "symbol"
    t.string "name"
    t.text "description"
    t.integer "condition"
    t.integer "integrity"
    t.integer "speed"
    t.integer "quality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_id"], name: "index_engines_on_ship_id"
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

  create_table "frame_requirements", force: :cascade do |t|
    t.bigint "frame_id", null: false
    t.integer "power"
    t.integer "crew"
    t.integer "slots"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["frame_id"], name: "index_frame_requirements_on_frame_id"
  end

  create_table "frames", force: :cascade do |t|
    t.bigint "ship_id", null: false
    t.string "symbol"
    t.string "name"
    t.text "description"
    t.integer "condition"
    t.integer "integrity"
    t.integer "module_slots"
    t.integer "mounting_points"
    t.integer "fuel_capacity"
    t.integer "quality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_id"], name: "index_frames_on_ship_id"
  end

  create_table "fuel_consumptions", force: :cascade do |t|
    t.bigint "fuels_id", null: false
    t.integer "amount"
    t.datetime "consumed_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fuels_id"], name: "index_fuel_consumptions_on_fuels_id"
  end

  create_table "fuels", force: :cascade do |t|
    t.bigint "ship_id", null: false
    t.integer "current"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_id"], name: "index_fuels_on_ship_id"
  end

  create_table "module_requirements", force: :cascade do |t|
    t.bigint "ship_module_id", null: false
    t.integer "power"
    t.integer "crew"
    t.integer "slots"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_module_id"], name: "index_module_requirements_on_ship_module_id"
  end

  create_table "mount_deposits", force: :cascade do |t|
    t.bigint "mount_id", null: false
    t.string "deposit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mount_id"], name: "index_mount_deposits_on_mount_id"
  end

  create_table "mount_requirements", force: :cascade do |t|
    t.bigint "mount_id", null: false
    t.integer "power"
    t.integer "crew"
    t.integer "slots"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mount_id"], name: "index_mount_requirements_on_mount_id"
  end

  create_table "mounts", force: :cascade do |t|
    t.bigint "ship_id", null: false
    t.string "symbol"
    t.string "name"
    t.string "description"
    t.integer "strength"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_id"], name: "index_mounts_on_ship_id"
  end

  create_table "navs", force: :cascade do |t|
    t.bigint "ship_id", null: false
    t.string "system_symbol"
    t.string "waypoint_symbol"
    t.string "status"
    t.string "flight_mode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_id"], name: "index_navs_on_ship_id"
  end

  create_table "reactor_requirements", force: :cascade do |t|
    t.bigint "reactor_id", null: false
    t.integer "power"
    t.integer "crew"
    t.integer "slots"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reactor_id"], name: "index_reactor_requirements_on_reactor_id"
  end

  create_table "reactors", force: :cascade do |t|
    t.bigint "ship_id", null: false
    t.string "symbol"
    t.string "name"
    t.text "description"
    t.integer "condition"
    t.integer "integrity"
    t.integer "power_output"
    t.integer "quality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_id"], name: "index_reactors_on_ship_id"
  end

  create_table "registrations", force: :cascade do |t|
    t.bigint "ship_id", null: false
    t.string "name"
    t.string "faction_symbol"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_id"], name: "index_registrations_on_ship_id"
  end

  create_table "routes", force: :cascade do |t|
    t.bigint "nav_id", null: false
    t.jsonb "origin_data"
    t.jsonb "destination_data"
    t.datetime "departure_time"
    t.datetime "arrival_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nav_id"], name: "index_routes_on_nav_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "ip_address"
    t.string "user_agent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "ship_modules", force: :cascade do |t|
    t.bigint "ship_id", null: false
    t.string "symbol"
    t.integer "capacity"
    t.integer "range"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_id"], name: "index_ship_modules_on_ship_id"
  end

  create_table "ships", force: :cascade do |t|
    t.string "symbol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "agent_id", null: false
    t.index ["agent_id"], name: "index_ships_on_agent_id"
  end

  create_table "systems", force: :cascade do |t|
    t.string "symbol"
    t.string "sector_symbol"
    t.string "constellation"
    t.string "name"
    t.string "system_type"
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
    t.string "username"
    t.index ["email_address"], name: "index_users_on_email_address", unique: true
  end

  add_foreign_key "agents", "factions"
  add_foreign_key "agents", "systems", column: "headquarters_id"
  add_foreign_key "agents", "users"
  add_foreign_key "cargo_inventory_items", "cargos"
  add_foreign_key "cargos", "ships"
  add_foreign_key "cooldowns", "ships"
  add_foreign_key "crews", "ships"
  add_foreign_key "engine_requirements", "engines"
  add_foreign_key "engines", "ships"
  add_foreign_key "factions", "systems", column: "headquarters_id"
  add_foreign_key "frame_requirements", "frames"
  add_foreign_key "frames", "ships"
  add_foreign_key "fuel_consumptions", "fuels", column: "fuels_id"
  add_foreign_key "fuels", "ships"
  add_foreign_key "module_requirements", "ship_modules"
  add_foreign_key "mount_deposits", "mounts"
  add_foreign_key "mount_requirements", "mounts"
  add_foreign_key "mounts", "ships"
  add_foreign_key "navs", "ships"
  add_foreign_key "reactor_requirements", "reactors"
  add_foreign_key "reactors", "ships"
  add_foreign_key "registrations", "ships"
  add_foreign_key "routes", "navs"
  add_foreign_key "sessions", "users"
  add_foreign_key "ship_modules", "ships"
  add_foreign_key "ships", "agents"
end
