class TaskGood < ActiveRecord::Base
  belongs_to :task
  belongs_to :good

  soft_deletable dependent_associations: [:task, :good]
end
