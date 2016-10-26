class RenameMileageColumnToReading < ActiveRecord::Migration[5.0]
  def change
    rename_column :mileages, :mileage, :mileage_reading
  end
end
