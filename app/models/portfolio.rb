class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular#this is the best practice to call certail parts of the model AKA scope
    where(subtitle: 'Angular')
  end
end
