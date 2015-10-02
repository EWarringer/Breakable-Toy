class CreateUserSkills < ActiveRecord::Migration
  def change
    create_table :user_skills do |t|
      t.belongs_to :user, null: false
      t.belongs_to :skill, null: false
    end
  end
end
