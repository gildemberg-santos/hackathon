class Vehicle < ApplicationRecord
  validates :name, :year, :price, presence: true
  validates_uniqueness_of :name, scope: [:year, :price]
end
