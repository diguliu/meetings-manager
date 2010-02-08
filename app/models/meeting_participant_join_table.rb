class MeetingParticipantJoinTable < ActiveRecord::Base
	def self.up
		create_table :meetings_participants, :id => false do |t|
			t.integer :meeting_id
			t.integer :participant_id
	end

	def self.down
		drop_table :meetings_participants
	end
end
