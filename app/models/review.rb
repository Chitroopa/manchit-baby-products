class Review < ApplicationRecord
  belongs_to :product
  has_attached_file :review_image, styles: { medium: "200x200>", thumb: "100x100>", large: "400x400>" }, default_url: "/images/:style/test.jpg"
  validates_attachment_content_type :review_image, content_type: /\Aimage\/.*\z/
  validates :title, presence: true
  validates_numericality_of :rating, less_than_or_equal_to: 5, greater_than: 0, presence: true
end
