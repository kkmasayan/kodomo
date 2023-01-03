FactoryBot.define do
  factory :user do
    nickname { Faker::Name.name }
    email { Faker::Internet.free_email }
    password { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    last_name { '山田' }
    first_name { '花子' }
    last_name_kana { 'ヤマダ' }
    first_name_kana { 'ハナコ' }
    birthday { Faker::Date.birthday }
    sex_id { Faker::Number.between(from: 1, to: 2) }
    children_number_id { Faker::Number.between(from: 1, to: 7) }
    children_age_id { Faker::Number.between(from: 1, to: 6) }
    children_sex_id { Faker::Number.between(from: 1, to: 3) }
  end
end
