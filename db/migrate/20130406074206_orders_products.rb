class OrdersProducts < ActiveRecord::Migration
  def change
  	create_table 'orders_products', :id => false do |t|
      t.column :product_id, :integer
      t.column :order_id, :integer
   end
  end
end
