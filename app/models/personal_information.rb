class PersonalInformation < ActiveRecord::Base
  has_many :users

  soft_deletable
end
