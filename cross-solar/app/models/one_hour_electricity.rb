class OneHourElectricity < ApplicationRecord
  belongs_to :panel

  validates :kilowatts, presence: true
  validates :hour, presence: true, uniqueness: { scope: :panel_id }
end
