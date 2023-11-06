FactoryBot.define do
  factory :sale do
    association :lead

    amount { 1 }
    vehicle { Vehicle.all.sample || association(:vehicle) }
  end
end
