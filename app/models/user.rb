# == Schema Information
#
# Table name: users
#
#  id                      :integer          not null, primary key
#  name                    :string(255)      not null
#  soft_destroyed_at       :datetime
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  authority_id            :integer          not null
#  personal_information_id :integer          not null
#

class User < ActiveRecord::Base
  belongs_to :authority
  belongs_to :personal_information

  soft_deletable dependent_associations: [:authority, :personal_information]
end
