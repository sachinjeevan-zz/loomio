class AddKindToAnnouncements < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :announcements, :kind, :string, null: false
  end
end
