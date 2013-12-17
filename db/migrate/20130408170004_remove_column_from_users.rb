class RemoveColumnFromUsers < ActiveRecord::Migration
  def up
  end

  def down
  	remove_column :users, :image, :string
  	remove_column :users, :image_file_name, :string
  end
end
