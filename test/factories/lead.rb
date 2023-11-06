FactoryBot.define do
  factory :lead do
    association :company

    name { Faker::Name.name }
    phone { Faker::PhoneNumber.cell_phone }
    email { Faker::Internet.email }
  end
end
