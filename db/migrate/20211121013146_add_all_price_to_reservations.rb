class AddAllPriceToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :all_price, :integer
  end
end
