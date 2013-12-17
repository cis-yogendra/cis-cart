class AddColumnToPaymentOrders < ActiveRecord::Migration
  def change
    add_column :payment_orders, :product_id, :integer
    add_column :payment_orders, :order_id, :integer
  end
end
