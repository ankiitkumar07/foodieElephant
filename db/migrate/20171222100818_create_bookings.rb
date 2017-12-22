class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.integer :booking_for
      t.string :date
      t.string :time
      t.integer :phone

      t.timestamps
    end
  end
end
