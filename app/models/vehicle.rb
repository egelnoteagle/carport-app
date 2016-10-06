class Vehicle < ApplicationRecord
  belongs_to :user

  def owner
    user.first_name
  end
end
