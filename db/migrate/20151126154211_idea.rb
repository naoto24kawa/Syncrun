class Idea < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end
  end
end
