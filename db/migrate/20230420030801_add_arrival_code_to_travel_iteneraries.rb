class AddArrivalCodeToTravelIteneraries < ActiveRecord::Migration[7.0]
  def change
    add_column :travel_iteneraries, :arrival_code, :string
  end
end
