class AddFoodIdToPrices < ActiveRecord::Migration
  def change
    add_column :prices, :food_id, :integer
  end
end
