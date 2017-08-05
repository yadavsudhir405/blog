class AddTravellerToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :traveller, :string
  end
end
