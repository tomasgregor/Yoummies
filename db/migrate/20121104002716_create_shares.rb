class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.text :note
      t.integer :rating
      t.string :picture
      t.integer :thumbup
      t.integer :thumbdown
      t.integer :food_id

      t.timestamps
    end
  end
end
