class AddNotNull < ActiveRecord::Migration
  def change
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
