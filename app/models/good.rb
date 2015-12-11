# == Schema Information
#
# Table name: goods
#
#  id                :integer          not null, primary key
#  to_user_id        :integer          not null
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  user_id           :integer          not null
#

class Good < ActiveRecord::Base
  belongs_to :user
  belongs_to :to_user
  has_many :title_goods
  has_many :content_goods
  has_many :task_goods

  soft_deletable dependent_associations: [:user, :to_user]
end
