class RemoveEndOnFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :end_on, :date
  end
end
