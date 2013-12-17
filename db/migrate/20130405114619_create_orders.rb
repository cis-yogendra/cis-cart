class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :pay_type
      t.string :address
      t.string :address_latitude
      t.string :address_longitude
      t.string :address_locality
      t.string :address_country
      t.timestamps
    end
  end
end
