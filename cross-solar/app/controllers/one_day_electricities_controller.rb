class OneDayElectricitiesController < ApplicationController
  before_action :set_panel

  # GET /one_day_electricities
  # GET /one_day_electricities.json
  def index
  end

  private

  def set_panel
    @panel = Panel.find_by_serial params[:panel_serial]
  end
end
