class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :email
      t.string :password_digest
      t.string :address
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
