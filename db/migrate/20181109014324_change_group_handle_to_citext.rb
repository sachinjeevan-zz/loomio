class ChangeGroupHandleToCitext < ActiveRecord::Migration[4.2][5.1]
  def change
    change_column :groups, :handle, :citext
  end
end
