class Portfolio < ApplicationRecord
  has_many :technologies
  
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  #scopes

  # 1 way
  def self.angular
    where(subtitle: "Angular")
  end

  # other way
  scope :ruby_on_rails_porfolio_items, -> { where(subtitle: "Ruby on Rails") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||=  Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
