class AddCategoryIdToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :category_id, :integer, null: false
  end
end
