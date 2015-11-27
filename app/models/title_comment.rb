class TitleComment < ActiveRecord::Base
  belongs_to :title
  belongs_to :comment

  soft_deletable dependent_associations: [:title, :comment]
end
