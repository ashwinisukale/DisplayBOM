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

ActiveRecord::Schema.define(version: 2019_03_14_111558) do

  create_table "bill_of_materials", force: :cascade do |t|
    t.string "item"
    t.string "level"
    t.string "description"
    t.string "planner"
    t.string "buyer"
    t.string "make_buy"
    t.string "status"
    t.string "revision"
    t.string "type"
    t.string "engineering_item"
    t.string "item_seq"
    t.string "op_seq"
    t.string "alternate"
    t.string "engineering_bill"
    t.string "comments"
    t.string "uom"
    t.string "basis"
    t.string "quantity"
    t.string "planning"
    t.string "yield"
    t.string "extended_quantity"
    t.string "effectivity_control"
    t.string "from"
    t.string "to"
    t.string "from_date"
    t.string "to_date"
    t.string "disabled"
    t.string "implemented"
    t.string "eco"
    t.string "supply_type"
    t.string "subinventory"
    t.string "locator"
    t.string "costed"
    t.string "unit_cost"
    t.string "extended_cost"
    t.string "operation_seq"
    t.string "manufacturing"
    t.string "offset"
    t.string "cumulative_manufacuturing"
    t.string "cumulative_total"
    t.string "optional"
    t.string "mutually_exclusive"
    t.string "atp"
    t.string "min_qty"
    t.string "max_qty"
    t.string "sales_order_basis"
    t.string "shippable"
    t.string "include_on_ship_docs"
    t.string "required_to_ship"
    t.string "required_for_revenue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "content_displays", force: :cascade do |t|
    t.integer "star_item_id"
    t.integer "station_id"
    t.string "level"
    t.string "part_code"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["star_item_id"], name: "index_content_displays_on_star_item_id"
    t.index ["station_id"], name: "index_content_displays_on_station_id"
  end

  create_table "star_items", force: :cascade do |t|
    t.string "name"
    t.json "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "name"
    t.string "operation_sequence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
