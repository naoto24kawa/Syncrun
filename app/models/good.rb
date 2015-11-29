# == Schema Information
#
# Table name: goods
#
#  id                :integer          not null, primary key
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  user_id           :integer          not null
#

class Good < ActiveRecord::Base
  belongs_to :user
  belongs_to :to_user
end
