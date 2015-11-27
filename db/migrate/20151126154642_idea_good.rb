class IdeaGood < ActiveRecord::Migration
  def change
    create_table :idea_goods do |t|
      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end
  end
end
