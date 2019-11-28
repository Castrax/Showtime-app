class Showtime < ApplicationRecord
  belongs_to :movie
  belongs_to :theater
  monetize :price_cents
end
