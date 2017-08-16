class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank?}
  #that is data validation to make sure it's not empty

  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular#this is the best practice to call certail parts of the model AKA scope
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails')}

  after_initialize :set_default #this happens after the new method

  def set_default #this can be done in the schema file or here to set defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '250')
  end
# ||= means if == to nil then do this.
end
