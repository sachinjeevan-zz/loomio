class AddEmailNewsletterToUsers < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :users, :email_newsletter, :boolean, default: false, null: false
  end
end
