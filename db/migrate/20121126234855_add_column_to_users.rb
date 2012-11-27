class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :food_id, :integer
  end
end
