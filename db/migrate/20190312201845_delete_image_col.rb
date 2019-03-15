class DeleteImageCol < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :image_updated_at
  end
end
