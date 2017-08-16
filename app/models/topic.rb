class Topic < ApplicationRecord
  validates_presence_of :title
  #needs to be told it has children
  has_many :blogs
end
