# == Schema Information
#
# Table name: content_goods
#
#  id                :integer          not null, primary key
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  content_id        :integer          not null
#  good_id           :integer          not null
#

class ContentGood < ActiveRecord::Base
  belongs_to :content
  belongs_to :good
end
