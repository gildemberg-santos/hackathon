class Company < ApplicationRecord
  has_many :leads, dependent: :destroy
  has_many :vehicles, through: :leads
  has_many :sales, through: :leads
  validates :name, :phone, :email, presence: true
  validates_uniqueness_of :name, scope: [:phone, :email]
end
