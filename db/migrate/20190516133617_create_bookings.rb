class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :date
      t.integer :nights
      t.integer :user_id
      t.integer :hostel_id
      t.integer :room_id
      t.references :user, foreign_key: true
      t.references :hostel, foreign_key: true
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
