# == Schema Information
#
# Table name: tasks
#
#  id                :integer          not null, primary key
#  content           :string(255)      not null
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  idea_id           :integer          not null
#

class Task < ActiveRecord::Base
  belongs_to :idea

  has_many :task_comments
  has_many :task_goods

  soft_deletable dependent_associations: [:idea]
end
