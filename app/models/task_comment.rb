# == Schema Information
#
# Table name: task_comments
#
#  id                :integer          not null, primary key
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  task_id           :integer          not null
#  comment_id        :integer          not null
#

class TaskComment < ActiveRecord::Base
  belongs_to :task
  belongs_to :comment

  soft_deletable dependent_associations: [:task, :comment]
end
