class ContentComment < ActiveRecord::Migration
  def change
    create_table :content_comments do |t|
      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end
  end
end
