FactoryBot.define do
  factory :comment do
    association :user
    association :diary
    content { Faker::Lorem.sentence }
  end
end