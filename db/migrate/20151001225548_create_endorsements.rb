class CreateEndorsements < ActiveRecord::Migration
  def change
    create_table :endorsements do |t|
      t.belongs_to :user, null: false
      t.belongs_to :user_skill, null: false
    end
  end
end
