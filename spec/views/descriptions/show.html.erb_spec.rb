require 'rails_helper'

RSpec.describe "descriptions/show", type: :view do
  before(:each) do
    @description = assign(:description, Description.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Shop/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Appointment/)
    expect(rendered).to match(/Processor/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/Type Memory/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Type Disk/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Graphics Card/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Operating System/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/Model Processor/)
    expect(rendered).to match(/Chipset/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.5/)
    expect(rendered).to match(/10.5/)
    expect(rendered).to match(/11.5/)
    expect(rendered).to match(/12.5/)
    expect(rendered).to match(/13/)
    expect(rendered).to match(/14/)
    expect(rendered).to match(/15/)
    expect(rendered).to match(/Form Factor/)
    expect(rendered).to match(/16/)
    expect(rendered).to match(/17/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Thunderbolt/)
    expect(rendered).to match(/false/)
  end
end
