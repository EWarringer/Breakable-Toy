class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belongs_to :user, null: false
      t.string :body, null: false
      t.string :description, null: false
      t.timestamps null:false
    end
  end
end
