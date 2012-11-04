class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.decimal :price
      t.string :picture
      t.integer :category_id

      t.timestamps
    end
  end
end
