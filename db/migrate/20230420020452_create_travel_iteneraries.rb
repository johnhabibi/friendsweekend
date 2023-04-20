class CreateTravelIteneraries < ActiveRecord::Migration[7.0]
  def change
    create_table :travel_iteneraries do |t|
      t.string :traveler
      t.string :mode
      t.string :provider
      t.datetime :departure
      t.datetime :arrival

      t.timestamps
    end
  end
end
