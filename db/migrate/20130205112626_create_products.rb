class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :category_id
      t.integer :cart_id	
      t.string :image
      t.string :price, :precision => 10, :scale => 2
      t.string :description
      t.timestamps
    end
  end
end
