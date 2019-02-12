class AddHrOcolumn < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :HRO_id, :integer
  end
end
