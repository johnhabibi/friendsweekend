class CreateEventDates < ActiveRecord::Migration[7.0]
  def change
    create_table :event_dates do |t|
      t.datetime :date
      t.string :location

      t.timestamps
    end
  end
end
