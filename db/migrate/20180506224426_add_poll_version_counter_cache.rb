class AddPollVersionCounterCache < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :polls, :versions_count, :integer, default: 0
  end
end
