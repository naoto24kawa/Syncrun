class TaskGood < ActiveRecord::Base
  belongs_to :task
  belongs_to :good
end
