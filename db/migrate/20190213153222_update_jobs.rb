class UpdateJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :quantity, :integer
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
