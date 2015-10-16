class AddProfilePhotoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :photo, :string, default: "http://i.imgur.com/aLpJ7K4.png"
  end
end
