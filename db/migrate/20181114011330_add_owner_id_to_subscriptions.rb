class AddOwnerIdToSubscriptions < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :subscriptions, :owner_id, :integer
    add_index :subscriptions, :owner_id
  end
end
