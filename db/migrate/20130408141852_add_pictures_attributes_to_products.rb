class AddPicturesAttributesToProducts < ActiveRecord::Migration
  def change
  	add_column :pictures, :pictures_attributes, :string
  end
end
