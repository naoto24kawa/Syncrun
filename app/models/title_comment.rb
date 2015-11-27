class TitleComment < ActiveRecord::Base
  belongs_to :title
  belongs_to :comment
end
