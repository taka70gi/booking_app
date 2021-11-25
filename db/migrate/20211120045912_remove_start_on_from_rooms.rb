class RemoveStartOnFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :start_on, :date
  end
end
