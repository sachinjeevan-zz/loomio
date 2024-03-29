require 'ruby-progressbar'
class MakeInvitationsPolymorphic < ActiveRecord::Migration[4.2]
  def up
    change_table :invitations do |t|
      t.references :invitable, polymorphic: true
    end

    invitation_count = Invitation.count

    Invitation.reset_column_information
    ActiveRecord::Base.record_timestamps = false
    begin
      puts "Updating #{invitation_count} Invitation records to polymorphic"

      Invitation.update_all(invitable_type: 'Group')

      Invitation.find_each do |i|
        i.update_attribute(:invitable_id, i.group_id)
      end
    ensure
      ActiveRecord::Base.record_timestamps = true
    end

    remove_column :invitations, :group_id
  end

  def down
    add_column :invitations, :group_id

    Invitation.reset_column_information
    ActiveRecord::Base.record_timestamps = false
    begin
      puts "Reverting #{Invitation.last.id} Invitation records to be non-polymorphic"
      Invitation.find_each do |i|
        p i.id if i.id % 100 == 0

        i.group_id = i.invitable_id
        i.save
      end
    ensure
      ActiveRecord::Base.record_timestamps = true
    end

    change_table :invitations do |t|
      t.remove_references :invitable, polymorphic: true
    end
  end
end
