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

ActiveRecord::Schema.define(version: 2021_12_11_180754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "descriptions", force: :cascade do |t|
    t.string "name"
    t.string "company"
    t.float "price"
    t.string "shop"
    t.boolean "in_stock"
    t.string "type_pc"
    t.string "appointment"
    t.string "processor"
    t.integer "cores"
    t.float "clock_frequency"
    t.string "type_memory"
    t.integer "value_ram"
    t.string "type_disk"
    t.integer "capasity_disc"
    t.boolean "odd"
    t.boolean "cardrider"
    t.boolean "discrete_graphichs"
    t.string "graphics_card"
    t.integer "power_unit"
    t.string "color"
    t.string "operating_system"
    t.boolean "monitor_included"
    t.boolean "keyboard_included"
    t.boolean "mouse_included"
    t.integer "year"
    t.string "model_processor"
    t.boolean "keyboard_light"
    t.float "width"
    t.float "high"
    t.float "depth"
    t.float "weight"
    t.integer "max_ram"
    t.integer "value_slots"
    t.integer "frequency_ram"
    t.integer "video_memory"
    t.boolean "bluetooth"
    t.boolean "lan"
    t.boolean "wifi"
    t.string "type_usb"
    t.boolean "dvi"
    t.boolean "hdmi"
    t.boolean "display_port"
    t.boolean "audio_input"
    t.boolean "audio_output"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
