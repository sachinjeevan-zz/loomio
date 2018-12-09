class AddMembersCanAnnounce < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :groups, :members_can_announce, :boolean, default: true, null: false
  end
end
