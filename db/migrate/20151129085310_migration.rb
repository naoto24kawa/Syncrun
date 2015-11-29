class Migration < ActiveRecord::Migration
  def change
    create_tables_without_reference

    add_indexes

    add_references

    add_not_null_to_references
  end

  private

  def create_tables_without_reference
    create_table :categories do |t|
      t.string :name, null: false

      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end

    create_table :authorities do |t|
      t.string :name, null: false

      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end

    create_table :goods do |t|
      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end

    create_table :comments do |t|
      t.string :content, null: false

      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end

    create_table :task_goods do |t|
      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end

    create_table :task_comments do |t|
      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end

    create_table :content_goods do |t|
      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end

    create_table :content_comments do |t|
      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end

    create_table :title_goods do |t|
      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end

    create_table :title_comments do |t|
      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end

    create_table :personal_informations do |t|
      t.string :name, null: false
      t.string :gender, null: false
      t.date :birth_date, null: false
      t.string :mail_address, null: false

      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end

    create_table :tasks do |t|
      t.string :content, null: false

      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end

    create_table :contents do |t|
      t.string :content, null: false

      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end

    create_table :titles do |t|
      t.string :content, null: false

      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end

    create_table :users do |t|
      t.string :name, null: false

      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end

    create_table :idea_goods do |t|
      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end

    create_table :ideas do |t|
      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end
  end

  def add_references
    add_reference :ideas, :category
    add_reference :ideas, :user
    add_reference :idea_goods, :title
    add_reference :idea_goods, :idea
    add_reference :users, :authority
    add_reference :users, :personal_information
    add_reference :titles, :idea
    add_reference :contents, :idea
    add_reference :tasks, :idea
    add_reference :title_comments, :title
    add_reference :title_comments, :comment
    add_reference :title_goods, :title
    add_reference :title_goods, :good
    add_reference :content_comments, :content
    add_reference :content_comments, :comment
    add_reference :content_goods, :content
    add_reference :content_goods, :good
    add_reference :task_comments, :task
    add_reference :task_comments, :comment
    add_reference :task_goods, :task
    add_reference :task_goods, :good
    add_reference :comments, :user
    add_reference :goods, :user
  end

  def add_indexes
    add_index :goods, :id
    add_index :comments, :id
    add_index :task_goods, :id
    add_index :task_comments, :id
    add_index :content_goods, :id
    add_index :content_comments, :id
    add_index :title_goods, :id
    add_index :title_comments, :id
    add_index :personal_informations, :id
    add_index :tasks, :id
    add_index :contents, :id
    add_index :titles, :id
    add_index :users, :id
    add_index :idea_goods, :id
    add_index :ideas, :id
    add_index :authorities, :id
    add_index :categories, :id
  end

  def add_not_null_to_references
    change_column_null :ideas, :category_id, false
    change_column_null :ideas, :user_id, false
    change_column_null :idea_goods, :title_id, false
    change_column_null :idea_goods, :idea_id, false
    change_column_null :users, :authority_id, false
    change_column_null :users, :personal_information_id, false
    change_column_null :titles, :idea_id, false
    change_column_null :contents, :idea_id, false
    change_column_null :tasks, :idea_id, false
    change_column_null :title_comments, :title_id, false
    change_column_null :title_comments, :comment_id, false
    change_column_null :title_goods, :title_id, false
    change_column_null :title_goods, :good_id, false
    change_column_null :content_comments, :content_id, false
    change_column_null :content_comments, :comment_id, false
    change_column_null :content_goods, :content_id, false
    change_column_null :content_goods, :good_id, false
    change_column_null :task_comments, :task_id, false
    change_column_null :task_comments, :comment_id, false
    change_column_null :task_goods, :task_id, false
    change_column_null :task_goods, :good_id, false
    change_column_null :comments, :user_id, false
    change_column_null :goods, :user_id, false
  end
end
