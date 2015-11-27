class TitleGood < ActiveRecord::Base
  belongs_to :title
  belongs_to :good

  soft_deletable dependent_associations: [:title, :good]
end
