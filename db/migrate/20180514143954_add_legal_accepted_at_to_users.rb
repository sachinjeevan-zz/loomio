class AddLegalAcceptedAtToUsers < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :users, :legal_accepted_at, :datetime
  end
end
