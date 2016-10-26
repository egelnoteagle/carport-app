class ChangeMileageReadingToNil < ActiveRecord::Migration[5.0]
  def change
    change_column_default :mileages, :mileage_reading, nil
  end
end
