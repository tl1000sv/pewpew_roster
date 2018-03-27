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

ActiveRecord::Schema.define(version: 20180324194447) do

  create_table "bows", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.string "serial_number"
    t.string "description"
    t.integer "bow_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cartridges", force: :cascade do |t|
    t.string "caliber"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classifications", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "firearms", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.integer "cartridge"
    t.integer "classification"
    t.integer "action"
    t.string "serial_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
