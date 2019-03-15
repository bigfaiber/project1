class AddPhotoUsers < ActiveRecord::Migration[5.2]
  def change
    #migration
  add_attachment :users, :image
  end
end
