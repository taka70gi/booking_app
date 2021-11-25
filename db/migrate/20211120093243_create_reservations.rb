class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :start_on
      t.date :end_on
      t.integer :people_num
      t.integer :user_id

      t.timestamps
    end
  end
end
