class Vehicle < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "372x230%" }, default_url: "https://wsa1.pakwheels.com/assets/default-display-image-car-638815e7606c67291ff77fd17e1dbb16.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

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

  def recall_list
    collection = []
    if year && model && make
      results =  Unirest.get("http://www.nhtsa.gov/webapi/api/recalls/vehicle/modelyear/#{year}/make/#{make}/model/#{model}?format=json").body["Results"]
      results.each do |recall_hash|
        collection << Recall.new(recall_hash)
      end
    end
    collection
  end
end
