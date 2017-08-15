class ChangeProductsPartNumber < ActiveRecord::Migration
  def up
    change_table :products do |t|
      t.change :part_number, :string
    end

    def down
      change_table :products do |t|
        t.change :part_number, :Numeric
      end

    end
  end
end
