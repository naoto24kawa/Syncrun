# == Schema Information
#
# Table name: titles
#
#  id                :integer          not null, primary key
#  content           :string(255)      not null
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  idea_id           :integer          not null
#

class Title < ActiveRecord::Base
  belongs_to :idea

  has_many :title_comments
  has_many :title_goods

  soft_deletable dependent_associations: [:idea]
end
