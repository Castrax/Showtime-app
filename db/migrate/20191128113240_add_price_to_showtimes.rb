class AddPriceToShowtimes < ActiveRecord::Migration[5.2]
  def change
    add_monetize :showtimes, :price, currency: { present: false }
  end
end
