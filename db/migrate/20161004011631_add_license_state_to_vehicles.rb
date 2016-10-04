class AddLicenseStateToVehicles < ActiveRecord::Migration[5.0]
  def change
    add_column :vehicles, :license_state, :string
  end
end
