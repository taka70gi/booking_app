class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.string :introduction
      t.string :address
      t.integer :price
      t.date :start_on
      t.date :end_on
      t.integer :people
      t.string :room_img

      t.timestamps
    end
  end
end
