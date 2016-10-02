class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.string :year
      t.string :trim
      t.string :style
      t.string :color
      t.string :vin_num
      t.string :vehicle_nickname

      t.timestamps
    end
  end
end
