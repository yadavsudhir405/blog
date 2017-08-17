class CreateAddress < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :zipcode
    end
  end
end
