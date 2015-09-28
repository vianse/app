class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :like
      t.integer :dislike
      t.references :noticium, index: true, foreign_key: true
      t.string :user_id

      t.timestamps null: false
    end
  end
end
