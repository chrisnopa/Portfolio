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
  validates_presence_of :title, :body, :thumb_image, :main_image, :image_type


  def self.angular
    where(subtitle:"Angular")
  end

  def self.by_position
    order("position ASC")

  end

  scope :ruby_on_rails_portfolio_items, -> {where(subtitle:"Ruby on Rails")}

  private

  def image_type
    if main_image.attached? == false || thumb_image.attached? == false
      errors.add(:image, 'are missing!')
    end
    # images.each do |image|
    #   if !image.content_type.in?(%('image/jpg image/png'))
    #     errors.add(:image, 'needs to a be a JPEG or a PNG')
    #   end
    # end
  end

end
