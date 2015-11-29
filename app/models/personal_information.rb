# == Schema Information
#
# Table name: personal_informations
#
#  id                :integer          not null, primary key
#  name              :string(255)      not null
#  gender            :string(255)      not null
#  birth_date        :date             not null
#  mail_address      :string(255)      not null
#  soft_destroyed_at :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class PersonalInformation < ActiveRecord::Base
  has_many :users

  soft_deletable
end
