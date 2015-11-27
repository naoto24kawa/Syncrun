class Title < ActiveRecord::Base
  belongs_to :idea

  has_many :title_comments
  has_many :title_goods

  soft_deletable dependent_associations: [:idea]
end
