class RemoveMileage < ActiveRecord::Migration[5.0]
  def change
    remove_column :mileages, :mileage, :integer
  end
end
