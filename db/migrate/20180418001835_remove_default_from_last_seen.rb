class RemoveDefaultFromLastSeen < ActiveRecord::Migration[4.2][5.1]
  def change
    change_column :users, :last_seen_at, :datetime, default: nil, null: true
  end
end
