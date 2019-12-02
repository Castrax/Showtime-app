class AddInitialPriceToShowtimes < ActiveRecord::Migration[5.2]
  def change
    add_column :showtimes, :initial_price, :integer
  end
end
