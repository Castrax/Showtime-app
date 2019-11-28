class Order < ApplicationRecord
  belongs_to :user
  belongs_to :showtime
  monetize :amount_cents
end
