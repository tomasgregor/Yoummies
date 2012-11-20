class RemovePriceFromFoods < ActiveRecord::Migration
  def up
    remove_column :foods, :price
  end

  def down
    add_column :foods, :price, :decimal
  end
end
