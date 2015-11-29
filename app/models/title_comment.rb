# == Schema Information
#
# Table name: title_comments
#
#  id                :integer          not null, primary key
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  title_id          :integer          not null
#  comment_id        :integer          not null
#

class TitleComment < ActiveRecord::Base
  belongs_to :title
  belongs_to :comment

  soft_deletable dependent_associations: [:title, :comment]
end
