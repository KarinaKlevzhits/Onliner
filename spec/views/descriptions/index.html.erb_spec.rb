require 'rails_helper'

RSpec.describe "descriptions/index", type: :view do
  before(:each) do
    assign(:descriptions, [
      Description.create!(
        name: "Name",
        price: 2.5,
        shop: "Shop",
        inStock: false,
        type: "Type",
        appointment: "Appointment",
        processor: "Processor",
        cores: 3,
        clock_frequency: 4.5,
        type_memory: "Type Memory",
        value_ram: 5,
        type_disk: "Type Disk",
        capasity_disc: 6,
        odd: false,
        cardrider: false,
        discrete_graphichs: false,
        graphics_card: "Graphics Card",
        power_unit: 7,
        color: "Color",
        operating_system: "Operating System",
        monitor_included: false,
        keyboard_included: false,
        mouse_included: false,
        year: 8,
        model_processor: "Model Processor",
        chipset: "Chipset",
        keyboard_light: false,
        width: 9.5,
        high: 10.5,
        depth: 11.5,
        weight: 12.5,
        max_ram: 13,
        value_slots: 14,
        frequency_ram: 15,
        formFactor: "Form Factor",
        rotationalSpeed: 16,
        video_memory: 17,
        bluetooth: false,
        lan: false,
        wifi: false,
        usb2.0: false,
        usb3.0: false,
        usb3.1TypeA: false,
        usb3.1TypeC: false,
        dvi: false,
        hdmi: false,
        display_port: false,
        thunderbolt: "Thunderbolt",
        audio_input: false
      ),
      Description.create!(
        name: "Name",
        price: 2.5,
        shop: "Shop",
        inStock: false,
        type: "Type",
        appointment: "Appointment",
        processor: "Processor",
        cores: 3,
        clock_frequency: 4.5,
        type_memory: "Type Memory",
        value_ram: 5,
        type_disk: "Type Disk",
        capasity_disc: 6,
        odd: false,
        cardrider: false,
        discrete_graphichs: false,
        graphics_card: "Graphics Card",
        power_unit: 7,
        color: "Color",
        operating_system: "Operating System",
        monitor_included: false,
        keyboard_included: false,
        mouse_included: false,
        year: 8,
        model_processor: "Model Processor",
        chipset: "Chipset",
        keyboard_light: false,
        width: 9.5,
        high: 10.5,
        depth: 11.5,
        weight: 12.5,
        max_ram: 13,
        value_slots: 14,
        frequency_ram: 15,
        formFactor: "Form Factor",
        rotationalSpeed: 16,
        video_memory: 17,
        bluetooth: false,
        lan: false,
        wifi: false,
        usb2.0: false,
        usb3.0: false,
        usb3.1TypeA: false,
        usb3.1TypeC: false,
        dvi: false,
        hdmi: false,
        display_port: false,
        thunderbolt: "Thunderbolt",
        audio_input: false
      )
    ])
  end

  it "renders a list of descriptions" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: "Shop".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Type".to_s, count: 2
    assert_select "tr>td", text: "Appointment".to_s, count: 2
    assert_select "tr>td", text: "Processor".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.5.to_s, count: 2
    assert_select "tr>td", text: "Type Memory".to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: "Type Disk".to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Graphics Card".to_s, count: 2
    assert_select "tr>td", text: 7.to_s, count: 2
    assert_select "tr>td", text: "Color".to_s, count: 2
    assert_select "tr>td", text: "Operating System".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 8.to_s, count: 2
    assert_select "tr>td", text: "Model Processor".to_s, count: 2
    assert_select "tr>td", text: "Chipset".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 9.5.to_s, count: 2
    assert_select "tr>td", text: 10.5.to_s, count: 2
    assert_select "tr>td", text: 11.5.to_s, count: 2
    assert_select "tr>td", text: 12.5.to_s, count: 2
    assert_select "tr>td", text: 13.to_s, count: 2
    assert_select "tr>td", text: 14.to_s, count: 2
    assert_select "tr>td", text: 15.to_s, count: 2
    assert_select "tr>td", text: "Form Factor".to_s, count: 2
    assert_select "tr>td", text: 16.to_s, count: 2
    assert_select "tr>td", text: 17.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Thunderbolt".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
