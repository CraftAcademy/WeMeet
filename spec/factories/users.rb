FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password {'password'}
    password_confirmation {'password'}
    first_name {'John'}
    last_name {'Doe'}
  end
end