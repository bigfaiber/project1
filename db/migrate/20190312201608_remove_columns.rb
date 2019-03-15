class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :image_file_name
    remove_column :users, :image_content_type
    remove_column :users, :image_file_size
  end
end
