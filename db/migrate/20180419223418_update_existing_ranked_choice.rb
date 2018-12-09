class UpdateExistingRankedChoice < ActiveRecord::Migration[4.2][5.1]
  def change
    Poll.where(poll_type: :ranked_choice).each(&:update_stance_data)
  end
end
