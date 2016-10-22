class Mileage < ApplicationRecord
  belongs_to :vehicle
  validates :mileage_reading, presence: true

  def mileage
    
  end
end
