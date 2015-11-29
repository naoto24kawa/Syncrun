# == Schema Information
#
# Table name: authorities
#
#  id                :integer          not null, primary key
#  name              :string(255)      not null
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Authority < ActiveRecord::Base
  has_many :users

  soft_deletable
end
