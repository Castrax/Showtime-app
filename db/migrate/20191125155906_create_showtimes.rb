class CreateShowtimes < ActiveRecord::Migration[5.2]
  def change
    create_table :showtimes do |t|
      t.datetime :start_hour
      t.datetime :end_hour
      t.integer :empty_seats
      t.integer :price_per_seat
      t.string :sku
      t.references :movie, foreign_key: true
      t.references :theater, foreign_key: true

      t.timestamps
    end
  end
end
