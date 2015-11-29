# == Schema Information
#
# Table name: idea_goods
#
#  id                :integer          not null, primary key
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  title_id          :integer          not null
#  idea_id           :integer          not null
#

class IdeaGood < ActiveRecord::Base
  belongs_to :title
  belongs_to :idea

  soft_deletable dependent_associations: [:title, :idea]
end
