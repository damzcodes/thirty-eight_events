class AddEventAndUserIdToEventUserTable < ActiveRecord::Migration
	change_table :event_users do |t|	
	  t.integer :event_id
	  t.integer :user_id
	end
end
