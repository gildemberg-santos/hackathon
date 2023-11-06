class Vehicle < ApplicationRecord
  has_many :sales, dependent: :destroy
  validates :name, :year, :price, presence: true
  validates_uniqueness_of :name, scope: [:year, :price]
end
