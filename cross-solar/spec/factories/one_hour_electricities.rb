FactoryBot.define do
  factory :one_hour_electricity do
    panel
    kilowatts 4919096
    sequence(:hour) { |n| DateTime.new(2018,5,16,n,0,0) }
  end
end
