class AddPriceIdToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :price_id, :integer
  end
end
