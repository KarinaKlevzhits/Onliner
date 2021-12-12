# frozen_string_literal: true

class DescriptionsController < ApplicationController
  before_action :set_description, only: %i[show edit update destroy]

  # GET /descriptions or /descriptions.json
  def index
    @descriptions = Description.all
  end

  # GET /descriptions/1 or /descriptions/1.json
  def show; end

  def sort_computer
    @description = Description.where("(name = ?) or (company = ?) or (price >= ? and price <= ?) or (shop = ?) or (in_stock = ?) or (type_pc = ?) or (appointment=?) or (processor = ?) or (cores >= ? and cores <= ?) or (clock_frequency >= ? and clock_frequency <=?) or (type_memory = ?) or (value_ram >= ? and value_ram <=?) or (type_disk = ?) or (capasity_disc >= ? and capasity_disc <= ?) or (odd = ?) or (cardrider = ?) or (discrete_graphichs = ?)
    or (graphics_card = ?) or (power_unit >= ? and power_unit <=?) or (color = ?) or (operating_system = ?) or (monitor_included = ?) or (keyboard_included = ?) or (mouse_included = ?) or (year >= ? and year <=?) or (model_processor = ?) or (keyboard_light = ?) or (width>=? and width<=?) or (high>=? and high<=?) or (depth>=? and depth<=?) or (weight>=? and weight<=?) or (max_ram = ?) or (value_slots = ?) or (frequency_ram = ?) or (video_memory = ?) or (bluetooth = ?) or
    (lan = ?) or (wifi = ?) or (type_usb = ?) or (dvi = ?) or (hdmi = ?) or (display_port = ?) or (audio_input = ?) or (audio_output = ?)",
                                     params[:name], params[:company], params[:from], params[:to], params[:shop], params[:in_stock], params[:type_pc], params[:appointment], params[:processor], params[:from_cores], params[:to_cores], params[:from_frequency], params[:to_frequency], params[:type_memory], params[:from_ram], params[:to_ram], params[:type_disk], params[:from_disc], params[:to_disc], params[:odd],
                                     params[:cardrider], params[:discrete_graphichs], params[:graphics_card], params[:from_power], params[:to_power], params[:color], params[:operating_system], params[:monitor_included], params[:keyboard_included], params[:mouse_included], params[:from_year], params[:to_year], params[:model_processor], params[:keyboard_light], params[:from_width], params[:to_width], params[:from_high], params[:to_high], params[:from_depth], params[:to_depth], params[:from_weight], params[:to_weight],
                                     params[:max_ram], params[:value_slots], params[:frequency_ram], params[:video_memory], params[:bluetooth],params[:lan],params[:wifi],params[:type_usb],params[:dvi],params[:hdmi],params[:display_port],params[:audio_input],params[:audio_output])
    render json: @description
  end

  # GET /descriptions/new
  def new
    @description = Description.new
  end

  # GET /descriptions/1/edit
  def edit; end

  # POST /descriptions or /descriptions.json
  def create
    @description = Description.new(description_params)

    respond_to do |format|
      if @description.save
        format.html { redirect_to @description, notice: 'Description was successfully created.' }
        format.json { render :show, status: :created, location: @description }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descriptions/1 or /descriptions/1.json
  def update
    respond_to do |format|
      if @description.update(description_params)
        format.html { redirect_to @description, notice: 'Description was successfully updated.' }
        format.json { render :show, status: :ok, location: @description }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descriptions/1 or /descriptions/1.json
  def destroy
    @description.destroy
    respond_to do |format|
      format.html { redirect_to descriptions_url, notice: 'Description was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_description
    @description = Description.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def description_params
    params.require(:description).permit(:name, :company, :price, :shop, :in_stock, :type_pc, :appointment, :processor,
                                        :cores, :clock_frequency, :type_memory, :value_ram, :type_disk, :capasity_disc, :odd, :cardrider, :discrete_graphichs, :graphics_card, :power_unit, :color, :operating_system, :monitor_included, :keyboard_included, :mouse_included, :year, :model_processor, 
                                        :keyboard_light, :width, :high, :depth, :weight, :max_ram, :value_slots, 
                                        :frequency_ram, :video_memory, :bluetooth, :lan, :wifi, :type_usb, :dvi, :hdmi, 
                                        :display_port, :audio_input, :audio_output, :from,
                                        :to, :from_cores, :to_cores, :from_frequency, :to_frequency, :from_ram, :to_ram,
                                         :from_disc, :to_disc, :from_power, :to_power, :from_year, :to_year, :from_width, :to_width, :from_high, :to_high, :from_depth, :to_depth, :from_weight, :to_weight)
  end
end
