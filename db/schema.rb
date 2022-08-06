# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_06_031120) do

  create_table "batters", force: :cascade do |t|
    t.integer "yearID"
    t.integer "PA"
    t.integer "AB"
    t.integer "R"
    t.integer "H"
    t.integer "2B"
    t.integer "3B"
    t.integer "HR"
    t.integer "RBI"
    t.integer "SB"
    t.integer "CS"
    t.integer "BB"
    t.integer "SO"
    t.integer "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_batters_on_player_id"
  end

  create_table "pitchers", force: :cascade do |t|
    t.integer "yearID"
    t.integer "G"
    t.integer "GS"
    t.integer "W"
    t.integer "L"
    t.integer "SV"
    t.integer "CG"
    t.float "IP"
    t.integer "BF"
    t.integer "H"
    t.integer "R"
    t.integer "ER"
    t.integer "BB"
    t.integer "K"
    t.integer "HBP"
    t.integer "2B"
    t.integer "3B"
    t.integer "HR"
    t.float "RA"
    t.integer "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_pitchers_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "nameFirst"
    t.string "nameLast"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "batters", "players"
  add_foreign_key "pitchers", "players"
end
