class Apartment < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode
  # The full_address method string interpolates db column data and gets parsed by geocoded_by.
  def address
    "#{street_address}, #{city}, #{state} #{postal}"
  end
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment :image, presence: true,
      content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] },
      size: { in: 0..10.megabytes }
end
