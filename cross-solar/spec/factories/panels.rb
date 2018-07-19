FactoryBot.define do
  factory :panel do
    sequence(:serial, (0..9).cycle) { |n| "#{n}abcdef01234567" }
    latitude 4.919096
    longitude 114.842492
    brand 'Test Brand'
  end
end
