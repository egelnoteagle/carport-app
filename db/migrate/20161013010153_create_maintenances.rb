class CreateMaintenances < ActiveRecord::Migration[5.0]
  def change
    create_table :maintenances do |t|
      t.integer :vehicle_id
      t.integer :service_id
      t.date :service_date

      t.timestamps
    end
  end
end
