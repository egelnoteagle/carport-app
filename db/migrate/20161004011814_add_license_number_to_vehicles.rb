class AddLicenseNumberToVehicles < ActiveRecord::Migration[5.0]
  def change
    add_column :vehicles, :license_number, :string
  end
end
