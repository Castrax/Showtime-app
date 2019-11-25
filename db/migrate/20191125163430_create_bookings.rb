class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :number_of_seats
      t.integer :total_price
      t.string :showtime_sku
      t.string :checkout_session_id
      t.string :state
      t.references :showtime, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
