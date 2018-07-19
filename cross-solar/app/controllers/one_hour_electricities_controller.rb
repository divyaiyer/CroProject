class OneHourElectricitiesController < ApplicationController
  before_action :set_panel

  # GET /one_hour_electricities
  # GET /one_hour_electricities.json
  def index
    @one_hour_electricities = OneHourElectricity.where(panel: @panel).paginate(pagination_params)
  end

  # POST /one_hour_electricities
  # POST /one_hour_electricities.json
  def create
    @one_hour_electricity = OneHourElectricity.new(one_hour_electricity_params)
    @one_hour_electricity.panel = @panel

    respond_to do |format|
      if @one_hour_electricity.save
        format.json { render :show, status: :created }
      else
        format.json {
          render json: @one_hour_electricity.errors.full_messages.join('. '),
          status: :unprocessable_entity
        }
      end
    end
  end

  private

  def set_panel
    @panel = Panel.find_by_serial params[:banel_serial]
  end

  # Whitelisting one-hour-electricity parameters
  def one_hour_electricity_params
    params.require(:one_hour_electricity).permit(:kilowatts, :hour)
  end

  # Whitelisting pagination parameters
  def pagination_params
    { page: params[:page_number], per_page: params[:page_size] }
  end
end
