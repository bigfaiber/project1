class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.string :position
      t.string :description
      t.string :requirements
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.float :salary
      t.timestamps

    end
  end
end
