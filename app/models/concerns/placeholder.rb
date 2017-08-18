module Placeholder# a helper method used to take care of data 
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:) #this is a classs method
    "http://via.placeholder.com/#{height}x#{width}" #stirng interpolation
  end
end
