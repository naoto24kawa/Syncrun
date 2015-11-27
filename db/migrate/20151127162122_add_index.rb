class AddIndex < ActiveRecord::Migration
  def change
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
end
