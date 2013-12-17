class AlterColumnPictures < ActiveRecord::Migration
  def up
  	add_column :pictures, :image_content_type, :string
  end

  def down
  end
end
