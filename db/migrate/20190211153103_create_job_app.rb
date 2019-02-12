class CreateJobApp < ActiveRecord::Migration[5.2]
  def change
    create_table :job_apps do |t|
      t.integer :job_id
      t.integer :user_id
      t.boolean :approved

      t.timestamps
    end
  end
end
