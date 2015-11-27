class AddReference < ActiveRecord::Migration
  def change
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
end
