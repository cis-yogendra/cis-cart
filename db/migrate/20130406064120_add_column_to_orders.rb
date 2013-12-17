class AddColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :order_confirmation, :boolean, :default => false
    add_column :orders, :order_token, :string
  end
end
