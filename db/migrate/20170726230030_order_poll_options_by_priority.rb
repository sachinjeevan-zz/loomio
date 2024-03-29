class OrderPollOptionsByPriority < ActiveRecord::Migration[4.2]
  def change
    add_index :poll_options, [:poll_id, :priority], order: {priority: :asc}
    add_index :poll_options, [:poll_id, :name], order: {name: :asc}
  end
end
