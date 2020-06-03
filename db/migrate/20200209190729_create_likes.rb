class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :constellation, null: false, foreign_key: true
      t.integer :like_count 

      t.timestamps
    end
  end
end
