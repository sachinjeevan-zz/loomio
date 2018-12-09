class RenameMissedYesterdayToCatchUp < ActiveRecord::Migration[4.2][5.1]
  def change
    rename_column :users, :email_missed_yesterday, :email_catch_up
  end
end
