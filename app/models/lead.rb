class Lead < ApplicationRecord
  belongs_to :company
  has_many :sales, dependent: :destroy
  has_many :vehicles, through: :sales
  validates :name, :phone, :email, presence: true
  validates_uniqueness_of :name, scope: [:phone, :email]
end
