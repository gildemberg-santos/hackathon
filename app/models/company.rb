class Company < ApplicationRecord
  has_many :leads, dependent: :destroy
  validates :name, :phone, :email, presence: true
  validates_uniqueness_of :name, scope: [:phone, :email]
end
