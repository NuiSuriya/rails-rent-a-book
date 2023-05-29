class AddTotalPriceToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :total_price, :float
    rename_column :books, :price, :price_per_day
  end
end
