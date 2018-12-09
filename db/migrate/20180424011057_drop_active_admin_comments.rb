class DropActiveAdminComments < ActiveRecord::Migration[4.2][5.1]
  def change
    drop_table :active_admin_comments
  end
end
