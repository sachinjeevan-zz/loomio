class AddVersionsCountToStances < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :stances, :versions_count, :integer, default: 0
  end
end
