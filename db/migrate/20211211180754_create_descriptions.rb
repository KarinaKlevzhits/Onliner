# frozen_string_literal: true

class CreateDescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :descriptions do |t|
      t.string :name
      t.string :company
      t.float :price
      t.string :shop
      t.boolean :in_stock
      t.string :type_pc
      t.string :appointment
      t.string :processor
      t.integer :cores
      t.float :clock_frequency
      t.string :type_memory
      t.integer :value_ram
      t.string :type_disk
      t.integer :capasity_disc
      t.boolean :odd
      t.boolean :cardrider
      t.boolean :discrete_graphichs
      t.string :graphics_card
      t.integer :power_unit
      t.string :color
      t.string :operating_system
      t.boolean :monitor_included
      t.boolean :keyboard_included
      t.boolean :mouse_included
      t.integer :year
      t.string :model_processor
      t.boolean :keyboard_light
      t.float :width
      t.float :high
      t.float :depth
      t.float :weight
      t.integer :max_ram
      t.integer :value_slots
      t.integer :frequency_ram
      t.integer :video_memory
      t.boolean :bluetooth
      t.boolean :lan
      t.boolean :wifi
      t.string :type_usb
      t.boolean :dvi
      t.boolean :hdmi
      t.boolean :display_port
      t.boolean :audio_input
      t.boolean :audio_output
      t.timestamps
    end
  end
end
