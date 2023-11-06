class Sale < ApplicationRecord
  belongs_to :vehicle
  belongs_to :lead
  has_one :company, through: :lead
  validates :vehicle_id, :lead_id, presence: true
end
