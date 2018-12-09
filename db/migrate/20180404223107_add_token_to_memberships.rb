class AddTokenToMemberships < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :memberships, :token, :string
    add_index :memberships, :token, unique: true
  end
end
