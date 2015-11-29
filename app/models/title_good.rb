# == Schema Information
#
# Table name: title_goods
#
#  id                :integer          not null, primary key
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  title_id          :integer          not null
#  good_id           :integer          not null
#

class TitleGood < ActiveRecord::Base
  belongs_to :title
  belongs_to :good

  soft_deletable dependent_associations: [:title, :good]
end
