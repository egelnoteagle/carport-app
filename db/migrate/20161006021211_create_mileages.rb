class CreateMileages < ActiveRecord::Migration[5.0]
  def change
    create_table :mileages do |t|
      t.integer :vehicle_id
      t.integer :mileage, default: 0

      t.timestamps
    end
  end
end
