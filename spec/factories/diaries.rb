FactoryBot.define do
  factory :diary do
    title { Faker::Name.name }
    category_id { Faker::Number.between(from: 1, to: 9) }
    text { Faker::Lorem.sentence }


    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test.png'), filename: 'test.png')
    end
  end
end
