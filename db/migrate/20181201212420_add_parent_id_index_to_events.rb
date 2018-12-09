class AddParentIdIndexToEvents < ActiveRecord::Migration[4.2][5.1]
  def change
    add_index :events, :parent_id
  end
end
