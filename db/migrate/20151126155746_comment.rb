class Comment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content, null: false

      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end
  end
end
