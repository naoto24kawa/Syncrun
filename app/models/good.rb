class Good < ActiveRecord::Base
  belongs_to :user
  belongs_to :to_user
end
