class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :food_id
      t.integer :shop_id

      t.timestamps
    end
  end
end
