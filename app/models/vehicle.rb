class Vehicle < ApplicationRecord
  #validates :mileage_reading, presence: true

  belongs_to :user
  has_many :mileages
  has_many :schedule_events
  has_many :maintenances
  has_many :services, through: :schedule_events
  has_many :services, through: :maintenances

  def owner
    user.first_name
  end

  def mileage_diff
    compared_mileages = mileages.last(2)
    compared_mileages[1].mileage_reading - compared_mileages[0].mileage_reading
  end

  def self.recall_list
    collection = []
    Unirest.get("http://www.nhtsa.gov/webapi/api/Recalls/vehicle/modelyear/#{:year}/make/#{:make}/model/#{:model}?format=json").body.each do |recall_hash|
      collection << Recall.new(recall_hash)
    end
    collection
  end
end
