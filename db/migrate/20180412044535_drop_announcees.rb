class DropAnnouncees < ActiveRecord::Migration[4.2][5.1]
  def change
    drop_table :announcements
    drop_table :announcees
  end
end
