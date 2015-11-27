class Task < ActiveRecord::Base
  belongs_to :idea

  has_many :task_comments
  has_many :task_goods

  soft_deletable dependent_associations: [:idea]
end
