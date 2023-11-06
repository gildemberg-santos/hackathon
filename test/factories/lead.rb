FactoryBot.define do
  factory :lead do
    association :company

    sex { %w[male female].sample }
    name { sex == "male" ? Faker::Name.masculine_name : Faker::Name.feminine_name }
    phone { Faker::PhoneNumber.cell_phone }
    email { Faker::Internet.email }
    country { Faker::Address.country }
    state { Faker::Address.state }
    city { Faker::Address.city }
    age { Faker::Number.between(from: 18, to: 65) }
    communication_channel { %w[phone email whatsapp].sample }
    source_of_acquisition { %w[facebook instagram linkedin google].sample }
  end
end
