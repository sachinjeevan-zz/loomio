class AddTitleToMembership < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :memberships, :title, :string
  end
end
