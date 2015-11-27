class TitleComment < ActiveRecord::Migration
  def change
    create_table :title_comments do |t|
      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end
  end
end
