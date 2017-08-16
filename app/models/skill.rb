class Skill < ApplicationRecord
  include Placeholder
validates_presence_of :title, :percent_utilized

after_initialize :set_default #this happens after the new method

def set_default
  self.badge ||= Placeholder.image_generator(height: '250', width: '250')
end
end
