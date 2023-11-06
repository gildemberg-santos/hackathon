class Vehicle < ApplicationRecord
  has_many :sales, dependent: :destroy
  has_many :leads, through: :sales
  has_many :companies, through: :leads
  validates :name, :year, :price, presence: true
  validates_uniqueness_of :name, scope: [:year, :price]
end
