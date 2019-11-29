class Movie < ApplicationRecord
  has_many :showtimes
  has_many :theaters, through: :showtimes
  has_many_attached :photos
end
