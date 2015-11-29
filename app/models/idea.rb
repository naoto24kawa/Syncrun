# == Schema Information
#
# Table name: ideas
#
#  id                :integer          not null, primary key
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  category_id       :integer          not null
#  user_id           :integer          not null
#

class Idea < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  has_many :contents
  has_many :tasks
  has_many :idea_goods

  soft_deletable dependent_associations: [:category, :user]
end
