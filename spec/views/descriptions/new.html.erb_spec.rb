require 'rails_helper'

RSpec.describe "descriptions/new", type: :view do
  before(:each) do
    assign(:description, Description.new(
      name: "MyString",
      price: 1.5,
      shop: "MyString",
      inStock: false,
      type: "",
      appointment: "MyString",
      processor: "MyString",
      cores: 1,
      clock_frequency: 1.5,
      type_memory: "MyString",
      value_ram: 1,
      type_disk: "MyString",
      capasity_disc: 1,
      odd: false,
      cardrider: false,
      discrete_graphichs: false,
      graphics_card: "MyString",
      power_unit: 1,
      color: "MyString",
      operating_system: "MyString",
      monitor_included: false,
      keyboard_included: false,
      mouse_included: false,
      year: 1,
      model_processor: "MyString",
      chipset: "MyString",
      keyboard_light: false,
      width: 1.5,
      high: 1.5,
      depth: 1.5,
      weight: 1.5,
      max_ram: 1,
      value_slots: 1,
      frequency_ram: 1,
      formFactor: "MyString",
      rotationalSpeed: 1,
      video_memory: 1,
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
      thunderbolt: "MyString",
      audio_input: false
    ))
  end

  it "renders new description form" do
    render

    assert_select "form[action=?][method=?]", descriptions_path, "post" do

      assert_select "input[name=?]", "description[name]"

      assert_select "input[name=?]", "description[price]"

      assert_select "input[name=?]", "description[shop]"

      assert_select "input[name=?]", "description[inStock]"

      assert_select "input[name=?]", "description[type]"

      assert_select "input[name=?]", "description[appointment]"

      assert_select "input[name=?]", "description[processor]"

      assert_select "input[name=?]", "description[cores]"

      assert_select "input[name=?]", "description[clock_frequency]"

      assert_select "input[name=?]", "description[type_memory]"

      assert_select "input[name=?]", "description[value_ram]"

      assert_select "input[name=?]", "description[type_disk]"

      assert_select "input[name=?]", "description[capasity_disc]"

      assert_select "input[name=?]", "description[odd]"

      assert_select "input[name=?]", "description[cardrider]"

      assert_select "input[name=?]", "description[discrete_graphichs]"

      assert_select "input[name=?]", "description[graphics_card]"

      assert_select "input[name=?]", "description[power_unit]"

      assert_select "input[name=?]", "description[color]"

      assert_select "input[name=?]", "description[operating_system]"

      assert_select "input[name=?]", "description[monitor_included]"

      assert_select "input[name=?]", "description[keyboard_included]"

      assert_select "input[name=?]", "description[mouse_included]"

      assert_select "input[name=?]", "description[year]"

      assert_select "input[name=?]", "description[model_processor]"

      assert_select "input[name=?]", "description[chipset]"

      assert_select "input[name=?]", "description[keyboard_light]"

      assert_select "input[name=?]", "description[width]"

      assert_select "input[name=?]", "description[high]"

      assert_select "input[name=?]", "description[depth]"

      assert_select "input[name=?]", "description[weight]"

      assert_select "input[name=?]", "description[max_ram]"

      assert_select "input[name=?]", "description[value_slots]"

      assert_select "input[name=?]", "description[frequency_ram]"

      assert_select "input[name=?]", "description[formFactor]"

      assert_select "input[name=?]", "description[rotationalSpeed]"

      assert_select "input[name=?]", "description[video_memory]"

      assert_select "input[name=?]", "description[bluetooth]"

      assert_select "input[name=?]", "description[lan]"

      assert_select "input[name=?]", "description[wifi]"

      assert_select "input[name=?]", "description[usb2.0]"

      assert_select "input[name=?]", "description[usb3.0]"

      assert_select "input[name=?]", "description[usb3.1TypeA]"

      assert_select "input[name=?]", "description[usb3.1TypeC]"

      assert_select "input[name=?]", "description[dvi]"

      assert_select "input[name=?]", "description[hdmi]"

      assert_select "input[name=?]", "description[display_port]"

      assert_select "input[name=?]", "description[thunderbolt]"

      assert_select "input[name=?]", "description[audio_input]"
    end
  end
end
