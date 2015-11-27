class IdeaGood < ActiveRecord::Base
  belongs_to :title
  belongs_to :idea

  soft_deletable dependent_associations: [:title, :idea]
end
