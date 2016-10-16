class ChangeToMileageReadings < ActiveRecord::Migration[5.0]
  def change
    add_column :mileages, :mileage_reading, :integer
  end
end
