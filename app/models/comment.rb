# == Schema Information
#
# Table name: comments
#
#  id                :integer          not null, primary key
#  content           :string(255)      not null
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  user_id           :integer          not null
#

class Comment < ActiveRecord::Base
  belongs_to :user
  has_many :title_comments
  has_many :content_comments
  has_many :task_comments

  soft_deletable dependent_associations: [:user]
end
