class Service < ApplicationRecord
  has_many :schedule_events
  has_many :maintenances
  has_many :vehicles, through: :schedule_events
  has_many :vehicles, through: :schedule_events
end
