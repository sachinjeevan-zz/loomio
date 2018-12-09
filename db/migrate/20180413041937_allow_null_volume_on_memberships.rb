class AllowNullVolumeOnMemberships < ActiveRecord::Migration[4.2][5.1]
  def change
    change_column :memberships, :volume, :integer, default: nil, null: true
  end
end
