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

ActiveRecord::Schema.define(version: 20180516030348) do

  create_table "one_hour_electricities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "panel_id"
    t.bigint "kilowatts"
    t.datetime "hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "panels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "serial"
    t.decimal "latitude", precision: 8, scale: 6
    t.decimal "longitude", precision: 9, scale: 6
    t.string "brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
