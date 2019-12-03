class Theater < ApplicationRecord
  has_many :showtimes
  has_many :movies, through: :showtimes
  has_one_attached :photo
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode, if: :will_save_change_to_address?
  after_validation :reverse_geocode
end
