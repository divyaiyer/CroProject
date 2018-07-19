require 'rails_helper'

RSpec.describe Panel, type: :model do
  it { should have_many :one_hour_electricities }
  it { should validate_presence_of :serial }
  it { should validate_uniqueness_of :serial }
  it { should validate_length_of(:serial).is_equal_to(15) }
  it { should validate_presence_of :latitude }
  it { should validate_numericality_of(:latitude).is_greater_than_or_equal_to(-90).is_less_than_or_equal_to(90) }
  it { should validate_presence_of :brand }
end
