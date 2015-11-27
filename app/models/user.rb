class User < ActiveRecord::Base
  belongs_to :authority
  belongs_to :personal_information
end
