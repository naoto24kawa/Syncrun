# == Schema Information
#
# Table name: task_goods
#
#  id                :integer          not null, primary key
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  task_id           :integer          not null
#  good_id           :integer          not null
#

class TaskGood < ActiveRecord::Base
  belongs_to :task
  belongs_to :good

  soft_deletable dependent_associations: [:task, :good]
end
