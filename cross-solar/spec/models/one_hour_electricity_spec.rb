require 'rails_helper'

RSpec.describe OneHourElectricity, type: :model do
  it { should belong_to :panel }
  it { should validate_presence_of :kilowatts }
  it { should validate_presence_of :hour }
  it { should validate_uniqueness_of(:hour).scoped_to(:panel_id) }
end
