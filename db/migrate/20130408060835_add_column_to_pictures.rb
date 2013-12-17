class AddColumnToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :image, :string
    add_column :pictures, :image_file_name, :string
    add_column :pictures, :image_file_size, :integer
    add_column :pictures, :image_file_type, :string
    add_column :pictures, :resource_id, :integer
    add_column :pictures, :resource_type, :string
  end
end
