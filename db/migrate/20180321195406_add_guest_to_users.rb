class AddGuestToUsers < ActiveRecord::Migration[5.1]
  def change hey
    add_column :users, :guest, :boolean
  end
end
