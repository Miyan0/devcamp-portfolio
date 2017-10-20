class Portfolio < ApplicationRecord

  validates_presence_of :title, :body, :main_image, :thumb_image

  #scopes

  # 1 way
  def self.angular
    where(subtitle: "Angular")
  end

  # other way
  scope :ruby_on_rails_porfolio_items, -> { where(subtitle: "Ruby on Rails") }
end
