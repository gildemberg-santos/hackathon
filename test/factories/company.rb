FactoryBot.define do
  factory :company do
    name { Faker::Company.name }
    phone { Faker::PhoneNumber.phone_number }
    email { Faker::Internet.email }
  end
end
