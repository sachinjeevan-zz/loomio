class AddHandleToGroups < ActiveRecord::Migration[4.2][5.1]
  def change
    rename_column :groups, :subdomain, :handle
  end
end
