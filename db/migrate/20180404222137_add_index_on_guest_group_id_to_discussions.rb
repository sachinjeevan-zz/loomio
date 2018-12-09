class AddIndexOnGuestGroupIdToDiscussions < ActiveRecord::Migration[4.2][5.1]
  def change
    add_index :discussions, :guest_group_id
  end
end
