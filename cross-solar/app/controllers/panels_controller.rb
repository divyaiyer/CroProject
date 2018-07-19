class PanelsController < ApplicationController

  # POST /panels
  # POST /panels.json
  def create
    @panel = Panel.new(panel_params)

    respond_to do |format|
      if @panel.save
        format.json { render :show, status: :created }
      else
        format.json {
          render json: @panel.errors.full_messages.join('. '),
          status: :unprocessable_entity
        }
      end
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def panel_params
    params.require(:panel).permit(:serial, :latitude, :longitude, :brand)
  end
end
