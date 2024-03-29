class AddPreviousVoteIdToVotes < ActiveRecord::Migration[4.2]
  def up
    add_column :votes, :previous_vote_id, :integer unless column_exists? :votes, :previous_vote_id
  end
  def down
    remove_column :votes, :previous_vote_id
  end
end
