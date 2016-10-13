class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :mileages
  has_many :schedule_events
  has_many :maintenances
  has_many :services, through: :schedule_events
  has_many :services, through: :maintenances

  def owner
    user.first_name
  end

end
