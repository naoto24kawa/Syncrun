class TaskComment < ActiveRecord::Base
  belongs_to :task
  belongs_to :comment

  soft_deletable dependent_associations: [:task, :comment]
end
