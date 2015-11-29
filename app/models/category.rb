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
end
