class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

      t.timestamps null: false
      t.string :name, null: false
      t.text :description, null: false
      t.date :date, null: false
      t.time :time, null: false
    end
  end
end
