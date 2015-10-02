class RemoveDescriptionFromSkills < ActiveRecord::Migration
  def change
    remove_column :skills, :description, :string
  end
end
