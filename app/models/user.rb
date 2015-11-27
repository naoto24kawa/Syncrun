class User < ActiveRecord::Base
  belongs_to :authority
  belongs_to :personal_information

  soft_deletable dependent_associations: [:authority, :personal_information]
end
