class ChangePriceInBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :price, :float
  end
end
