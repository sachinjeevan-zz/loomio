class IndexEmailVerifiedOnUsers < ActiveRecord::Migration[4.2][5.1]
  def change
    add_index :users, :email_verified
  end
end
