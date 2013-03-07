
FactoryGirl.define do
  factory :game, :class => Refinery::Games::Game do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

