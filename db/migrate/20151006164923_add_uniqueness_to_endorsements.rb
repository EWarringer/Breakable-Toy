class AddUniquenessToEndorsements < ActiveRecord::Migration
  def change
    add_index :endorsements, [:user_id, :user_skill_id], unique: true
  end
end
