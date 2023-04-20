class RemoveModeFromTavelIteneraries < ActiveRecord::Migration[7.0]
  def change
    remove_column :travel_iteneraries, :mode
  end
end
