class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false

      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end
  end
end
