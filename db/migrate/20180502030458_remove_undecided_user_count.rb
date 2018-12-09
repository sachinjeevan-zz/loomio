class RemoveUndecidedUserCount < ActiveRecord::Migration[4.2][5.1]
  def change
    rename_column :polls, :undecided_user_count, :undecided_count
  end
end
