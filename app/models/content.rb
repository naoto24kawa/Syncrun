# == Schema Information
#
# Table name: contents
#
#  id                :integer          not null, primary key
#  content           :string(255)      not null
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  idea_id           :integer          not null
#

class Content < ActiveRecord::Base
  belongs_to :idea
end
