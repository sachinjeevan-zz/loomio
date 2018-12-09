require_relative './legacy/backfill_discussion_members_job'

class BackfillDiscussionMembers < ActiveRecord::Migration[4.2][5.1]
  def change
    Delayed::Job.enqueue BackfillDiscussionMembersJob.new
  end
end
