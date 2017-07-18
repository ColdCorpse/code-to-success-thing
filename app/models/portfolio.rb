class Portfolio < ApplicationRecord
  has_many :technologies
  include Placeholder
  
  validates_presence_of :title, :body, :main_image, :thumb_image
  
  def self.angular
    where(subtitle:'angular')
  end
  
  scope :ruby_on_rails_portfolio_items, -> { where( subtitle: 'Ruby on rails') }
  
  after_initialize :set_defaults
  def set_defaults
      self.main_image ||=  Placeholder.image_generator(height: '500', width: '600')
  
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '150')
  
  end
end
