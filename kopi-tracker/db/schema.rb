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

ActiveRecord::Schema.define(version: 2019_08_14_083125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "farms", force: :cascade do |t|
    t.text "location"
    t.text "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kopis", force: :cascade do |t|
    t.string "name"
    t.text "roast"
    t.bigint "farms_id"
    t.bigint "roasts_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farms_id"], name: "index_kopis_on_farms_id"
    t.index ["roasts_id"], name: "index_kopis_on_roasts_id"
  end

  create_table "roasts", force: :cascade do |t|
    t.text "kopi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
