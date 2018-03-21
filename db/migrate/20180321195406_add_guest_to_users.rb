class AddGuestToUsers < ActiveRecord::Migration[5.1]
  def change
    hey this is my first commit
    add_column :users, :guest, :boolean
  end
end
