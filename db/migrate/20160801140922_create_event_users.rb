class CreateEventUsers < ActiveRecord::Migration
  def change
    create_table :event_users do |t|

      t.timestamps null: false
    end
  end
end
