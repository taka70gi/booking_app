class AddmeintroToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :meimg, :string
    add_column :users, :meintro, :string
  end
end
