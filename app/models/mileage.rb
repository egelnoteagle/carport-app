class Mileage < ApplicationRecord
  belongs_to :vehicle
  validates :mileage, presence: true
end
