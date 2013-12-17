class AlterColumnUsers < ActiveRecord::Migration
  def up
  	add_column :users, :image_file_name, :string
  end

  def down
  end
end
