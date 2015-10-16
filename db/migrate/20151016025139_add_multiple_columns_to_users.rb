class AddMultipleColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :industry, :string
    add_column :users, :description, :string
    add_column :users, :location, :string
    add_column :users, :linkedin_profile, :string
  end
end
