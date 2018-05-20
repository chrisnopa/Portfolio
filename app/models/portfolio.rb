class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :thumb_image, :main_image
end
