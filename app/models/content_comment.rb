# == Schema Information
#
# Table name: content_comments
#
#  id                :integer          not null, primary key
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  content_id        :integer          not null
#  comment_id        :integer          not null
#

class ContentComment < ActiveRecord::Base
  belongs_to :content
  belongs_to :comment

  soft_deletable dependent_associations: [:content, :comment]
end
