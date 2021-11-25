class RemovePeopleFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :people, :integer
  end
end
