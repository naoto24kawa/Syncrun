class Content < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :content, null: false

      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end
  end
end
