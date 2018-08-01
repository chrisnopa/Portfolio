class Portfolio < ApplicationRecord
  # extend FriendlyId
  # friendly_id :title, use: :slugged
  has_many :technologies, dependent: :destroy
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda {|attrs| attrs["name"].blank?}

has_one_attached :main_image
has_one_attached :thumb_image
  # include Placeholder
  validates_presence_of :title, :body, :thumb_image, :main_image
  # mount_uploader :thumb_image, PortfolioUploader
  # mount_uploader :main_image, PortfolioUploader

  def self.angular
    where(subtitle:"Angular")
  end

  def self.by_position
    order("position ASC")

  end

  scope :ruby_on_rails_portfolio_items, -> {where(subtitle:"Ruby on Rails")}


  # after_initialize :set_defaults

  # def set_defaults
  #   self.main_image ||= Placeholder.image_generator(height:"600", width:"400")
  #   self.thumb_image ||=Placeholder.image_generator(height:"350", width:"200")
  # end
end
