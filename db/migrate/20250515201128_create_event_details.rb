class CreateEventDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :event_details do |t|
      t.date :event_date, null: false
      t.string :venue, null: false
      t.date :nomination_deadline, null: false
      t.timestamps
    end
  end
end
