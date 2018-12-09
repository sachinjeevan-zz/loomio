class AddStanceDataToPollOption < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :poll_options, :score_counts, :jsonb, default: {}, null: false
  end
end
