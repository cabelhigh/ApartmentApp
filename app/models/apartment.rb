class Apartment < ActiveRecord::Base
  geocoded_by :full_address
  after_validation :geocode
  # The full_address method string interpolates db column data and gets parsed by geocoded_by.
  def full_address
    "#{address} #{city} #{state} #{postal}"
  end
end
