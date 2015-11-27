class Idea < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  has_many :contents
  has_many :tasks
  has_many :idea_goods

  soft_deletable
end
