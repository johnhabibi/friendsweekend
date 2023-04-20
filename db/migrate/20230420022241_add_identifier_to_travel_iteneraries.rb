class AddIdentifierToTravelIteneraries < ActiveRecord::Migration[7.0]
  def change
    add_column :travel_iteneraries, :identifier, :string
  end
end
