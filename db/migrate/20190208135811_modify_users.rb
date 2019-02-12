class ModifyUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :integer
    add_column :users, :rating, :float
  end
end
