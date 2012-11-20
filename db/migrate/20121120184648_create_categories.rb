class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :food_category

      t.timestamps
    end
  end
end
