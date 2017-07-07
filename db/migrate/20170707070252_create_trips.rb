class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :from
      t.string :to
      t.float :amount

      t.timestamps null: false
    end
  end
end
