class ScheduleEvent < ApplicationRecord
  belongs_to :vehicle
  belongs_to :service
end
