class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :mileages

  def owner
    user.first_name
  end
end
