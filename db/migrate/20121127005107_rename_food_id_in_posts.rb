class RenameFoodIdInPosts < ActiveRecord::Migration
  def change
    rename_column :posts, :food_id, :postable_id
  end
end
