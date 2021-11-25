class RemoveMeimgFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :meimg, :string
  end
end
