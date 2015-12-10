# == Schema Information
#
# Table name: categories
#
#  id                :integer          not null, primary key
#  name              :string(255)      not null
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Category < ActiveRecord::Base
  has_many :ideas

  soft_deletable

  ART = 1
  CRAFTS = 2
  DESIGN = 3
  FASHION = 4
  FOOD = 5
  TECHNOLOGY = 6
end
